.class public Lcom/deepseek/chat/mod/ChatLogger;
.super Ljava/lang/Object;

# static fields
.field private static logFile:Ljava/io/File;
.field private static initialized:Z
.field private static responseBuffer:Ljava/lang/StringBuilder;
.field private static savedResponse:Ljava/lang/StringBuilder;


# direct methods

# init(Context) - create log directory and file
.method public static init(Landroid/content/Context;)V
    .locals 5

    :try_start_0
    # File docsDir = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)
    const-string v0, "Documents"
    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
    move-result-object v0

    # File logDir = new File(docsDir, "Laoto")
    const-string v1, "Laoto"
    new-instance v2, Ljava/io/File;
    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    # docsDir.mkdirs() - ensure Documents exists
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    # logDir.mkdirs()
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    # logFile = new File(logDir, "chat_log.jsonl")
    const-string v0, "chat_log.jsonl"
    new-instance v1, Ljava/io/File;
    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    sput-object v1, Lcom/deepseek/chat/mod/ChatLogger;->logFile:Ljava/io/File;

    # responseBuffer = new StringBuilder()
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    sput-object v0, Lcom/deepseek/chat/mod/ChatLogger;->responseBuffer:Ljava/lang/StringBuilder;

    # savedResponse = new StringBuilder()
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    sput-object v0, Lcom/deepseek/chat/mod/ChatLogger;->savedResponse:Ljava/lang/StringBuilder;

    # initialized = true
    const/4 v0, 0x1
    sput-boolean v0, Lcom/deepseek/chat/mod/ChatLogger;->initialized:Z

    # Log.d("DSLog", "ChatLogger init: " + path)
    const-string v0, "DSLog"
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v1
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "ChatLogger init: "
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0
    const-string v1, "DSLog"
    const-string v2, "ChatLogger init failed"
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# logPrompt(String sessionId, String prompt) - log user prompt
.method public static logPrompt(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    # if (!initialized) return
    sget-boolean v0, Lcom/deepseek/chat/mod/ChatLogger;->initialized:Z
    if-nez v0, :cond_0
    return-void

    :cond_0
    # if prompt is null, skip
    if-nez p1, :cond_1
    return-void

    :cond_1
    :try_start_0
    # Build JSON line: {"ts":123456,"t":"P","sid":"...","txt":"..."}
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"ts\":"
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v1
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",\"t\":\"P\",\"sid\":\""
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # escape and append sessionId
    invoke-static {p0}, Lcom/deepseek/chat/mod/ChatLogger;->esc(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"txt\":\""
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # escape and append prompt
    invoke-static {p1}, Lcom/deepseek/chat/mod/ChatLogger;->esc(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"}\n"
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0

    # Write to file
    invoke-static {v0}, Lcom/deepseek/chat/mod/ChatLogger;->writeLog(Ljava/lang/String;)V

    # Clear response buffer for new conversation turn
    sget-object v0, Lcom/deepseek/chat/mod/ChatLogger;->responseBuffer:Ljava/lang/StringBuilder;
    if-eqz v0, :cond_2
    const/4 v1, 0x0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I
    move-result v2
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :cond_2

    # Also clear savedResponse for new conversation turn
    sget-object v0, Lcom/deepseek/chat/mod/ChatLogger;->savedResponse:Ljava/lang/StringBuilder;
    if-eqz v0, :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I
    move-result v2
    if-lez v2, :cond_3
    const/4 v1, 0x0
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :cond_3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# logDelta(String value) - accumulate SSE delta text and flush on FINISHED
.method public static logDelta(Ljava/lang/String;)V
    .locals 6

    # if (!initialized || value == null) return
    sget-boolean v0, Lcom/deepseek/chat/mod/ChatLogger;->initialized:Z
    if-nez v0, :cond_0
    return-void

    :cond_0
    if-nez p0, :cond_1
    return-void

    :cond_1
    :try_start_0
    # Check if value contains "FINISHED" -> flush buffer
    const-string v0, "FINISHED"
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v0
    if-eqz v0, :cond_text

    # FINISHED detected -> flush accumulated response
    # First, determine best source: responseBuffer or savedResponse (whichever is longer)
    sget-object v0, Lcom/deepseek/chat/mod/ChatLogger;->responseBuffer:Ljava/lang/StringBuilder;
    if-eqz v0, :cond_skip_flush

    # Get responseBuffer length
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I
    move-result v1

    # Check savedResponse - if it has MORE content, prefer it (anti-censorship)
    sget-object v4, Lcom/deepseek/chat/mod/ChatLogger;->savedResponse:Ljava/lang/StringBuilder;
    if-eqz v4, :cond_use_buffer

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I
    move-result v2

    # If savedResponse.length() > responseBuffer.length(), use savedResponse
    if-le v2, v1, :cond_use_buffer

    # savedResponse is longer -> use it (pre-censorship text)
    move-object v0, v4

    :cond_use_buffer
    # v0 now points to the best source (longer content)
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I
    move-result v1
    if-lez v1, :cond_skip_flush

    # Write full response: {"ts":...,"t":"R","txt":"..."}
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"ts\":"
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v2
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",\"t\":\"R\",\"txt\":\""
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # Get best source content and escape
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static {v2}, Lcom/deepseek/chat/mod/ChatLogger;->esc(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"}\n"
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1

    invoke-static {v1}, Lcom/deepseek/chat/mod/ChatLogger;->writeLog(Ljava/lang/String;)V

    # Clear BOTH buffers
    sget-object v0, Lcom/deepseek/chat/mod/ChatLogger;->responseBuffer:Ljava/lang/StringBuilder;
    if-eqz v0, :cond_clear_saved
    const/4 v1, 0x0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I
    move-result v2
    if-lez v2, :cond_clear_saved
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_clear_saved
    sget-object v0, Lcom/deepseek/chat/mod/ChatLogger;->savedResponse:Ljava/lang/StringBuilder;
    if-eqz v0, :cond_skip_flush
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I
    move-result v2
    if-lez v2, :cond_skip_flush
    const/4 v1, 0x0
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_skip_flush
    goto :goto_end

    :cond_text
    # Not FINISHED -> accumulate text token
    # Track if value was quoted (= text content, never skip)
    const/4 v5, 0x0

    # Strip JSON quotes: if starts with " and ends with ", remove them
    invoke-virtual {p0}, Ljava/lang/String;->length()I
    move-result v0
    const/4 v1, 0x2
    if-lt v0, v1, :cond_no_strip

    const/4 v1, 0x0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C
    move-result v1
    const/16 v2, 0x22
    if-ne v1, v2, :cond_no_strip

    # Starts with quote, check ends with quote
    add-int/lit8 v1, v0, -0x1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C
    move-result v3
    if-ne v3, v2, :cond_no_strip

    # Strip quotes: substring(1, length-1)
    const/4 v2, 0x1
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object p0

    # Mark as quoted text content
    const/4 v5, 0x1

    # Unescape \\n -> \n, \\t -> \t
    const-string v1, "\\n"
    const-string v2, "\n"
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object p0

    const-string v1, "\\t"
    const-string v2, "\t"
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object p0

    :cond_no_strip
    # Skip non-text values (JSON objects/arrays)
    invoke-virtual {p0}, Ljava/lang/String;->length()I
    move-result v0
    if-lez v0, :goto_end

    const/4 v1, 0x0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C
    move-result v1
    const/16 v2, 0x7b
    if-eq v1, v2, :cond_json_obj
    const/16 v2, 0x5b
    if-eq v1, v2, :goto_end

    # Skip pure numeric values ONLY if NOT quoted (raw SSE numbers like token counts)
    if-nez v5, :cond_not_digit
    :try_start_num
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    # parseLong succeeded on unquoted value → pure number → skip
    goto :goto_end
    :try_end_num
    .catch Ljava/lang/NumberFormatException; {:try_start_num .. :try_end_num} :cond_not_digit
    :cond_not_digit

    # Append to response buffer
    sget-object v0, Lcom/deepseek/chat/mod/ChatLogger;->responseBuffer:Ljava/lang/StringBuilder;
    if-eqz v0, :goto_end
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    goto :goto_end

    :cond_json_obj
    # JSON object: extract "content":"..." field for initial response text
    const-string v2, "\"content\":\""
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    move-result v1
    if-ltz v1, :goto_end

    # v1 = index of key, add key length to get value start
    invoke-virtual {v2}, Ljava/lang/String;->length()I
    move-result v3
    add-int/2addr v1, v3

    # Find closing quote for the content value
    const/16 v2, 0x22
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I
    move-result v2
    if-ltz v2, :goto_end
    if-le v2, v1, :goto_end

    # Extract content substring
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v3

    # Skip if empty
    invoke-virtual {v3}, Ljava/lang/String;->length()I
    move-result v4
    if-lez v4, :goto_end

    # Unescape \\n -> newline in extracted content
    const-string v4, "\\n"
    const-string v1, "\n"
    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object v3

    # Append extracted content to response buffer
    sget-object v0, Lcom/deepseek/chat/mod/ChatLogger;->responseBuffer:Ljava/lang/StringBuilder;
    if-eqz v0, :goto_end
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_end
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# logDeltaJson(JsonElement value) - log delta from JsonElement, calls toString (backward compat)
.method public static logDeltaJson(Ljava/lang/Object;)V
    .locals 1

    if-eqz p0, :cond_0

    # Convert JsonElement to string via toString()
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v0

    invoke-static {v0}, Lcom/deepseek/chat/mod/ChatLogger;->logDelta(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# logDeltaJsonWithOp(String op, Object value) - log delta with operation awareness
# When op is SET or BATCH, save current buffer before processing (anti-censorship)
.method public static logDeltaJsonWithOp(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5

    # if value is null, return
    if-eqz p1, :cond_end

    # if not initialized, return
    sget-boolean v0, Lcom/deepseek/chat/mod/ChatLogger;->initialized:Z
    if-nez v0, :cond_init_ok
    return-void

    :cond_init_ok
    # Check if operation suggests potential content replacement
    if-eqz p0, :cond_no_save

    # Check if op equals "SET"
    const-string v0, "SET"
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :cond_maybe_save

    # Check if op equals "BATCH"
    const-string v0, "BATCH"
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :cond_maybe_save

    goto :cond_no_save

    :cond_maybe_save
    # SET or BATCH detected - save current responseBuffer to savedResponse
    # ONLY if responseBuffer is longer than savedResponse (keep the longest version)
    sget-object v0, Lcom/deepseek/chat/mod/ChatLogger;->responseBuffer:Ljava/lang/StringBuilder;
    if-eqz v0, :cond_no_save
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I
    move-result v1
    if-lez v1, :cond_no_save

    sget-object v2, Lcom/deepseek/chat/mod/ChatLogger;->savedResponse:Ljava/lang/StringBuilder;
    if-eqz v2, :cond_no_save

    # Compare lengths: only save if responseBuffer > savedResponse
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I
    move-result v3
    if-le v1, v3, :cond_no_save

    # savedResponse = copy of responseBuffer
    const/4 v3, 0x0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_no_save
    # Convert value to string and call logDelta
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static {v0}, Lcom/deepseek/chat/mod/ChatLogger;->logDelta(Ljava/lang/String;)V

    :cond_end
    return-void
.end method


# writeLog(String line) - append line to log file
.method private static writeLog(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    # FileWriter fw = new FileWriter(logFile, true)
    sget-object v0, Lcom/deepseek/chat/mod/ChatLogger;->logFile:Ljava/io/File;
    new-instance v1, Ljava/io/FileWriter;
    const/4 v2, 0x1
    invoke-direct {v1, v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    # fw.write(line)
    invoke-virtual {v1, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    # fw.close()
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# esc(String s) - escape string for JSON
.method private static esc(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    # if (s == null) return ""
    if-nez p0, :cond_0
    const-string v0, ""
    return-object v0

    :cond_0
    # s = s.replace("\\", "\\\\")
    const-string v0, "\\"
    const-string v1, "\\\\"
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object p0

    # s = s.replace("\"", "\\\"")
    const-string v0, "\""
    const-string v1, "\\\""
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object p0

    # s = s.replace("\n", "\\n")
    const-string v0, "\n"
    const-string v1, "\\n"
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object p0

    # s = s.replace("\r", "\\r")
    const-string v0, "\r"
    const-string v1, "\\r"
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object p0

    return-object p0
.end method
