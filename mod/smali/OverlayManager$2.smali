.class Lcom/deepseek/chat/mod/OverlayManager$2;
.super Ljava/lang/Object;
.source "OverlayManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepseek/chat/mod/OverlayManager;->fetchOnlinePrompts(ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$isPurge:Z

.field final synthetic val$onComplete:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(ZLjava/lang/Runnable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 326
    iput-boolean p1, p0, Lcom/deepseek/chat/mod/OverlayManager$2;->val$isPurge:Z

    iput-object p2, p0, Lcom/deepseek/chat/mod/OverlayManager$2;->val$onComplete:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .line 328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 331
    const/4 v1, 0x0

    :try_start_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_1ff
    .catchall {:try_start_6 .. :try_end_b} :catchall_1fd

    .line 333
    const/16 v3, 0xc8

    :try_start_d
    new-instance v4, Ljava/net/URL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "https://api.github.com/repos/laoto1/PROMPT/contents?t="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    .line 335
    const-string v5, "GET"

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 336
    const-string v5, "User-Agent"

    const-string v6, "DeepSeekMod-Android"

    invoke-virtual {v4, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const/16 v5, 0x1388

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 338
    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 339
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    if-ne v5, v3, :cond_a7

    .line 340
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 341
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    :goto_5e
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_68

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5e

    .line 344
    :cond_68
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 345
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 348
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 349
    const/4 v5, 0x0

    .line 350
    :goto_73
    const-string v6, "\"name\":\""

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_a7

    .line 351
    add-int/lit8 v5, v5, 0x8

    .line 352
    const-string v7, "\""

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    .line 353
    if-eq v7, v6, :cond_a7

    .line 354
    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 355
    const-string v6, ".txt"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9a

    const-string v6, ".json"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a3

    :cond_9a
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a3

    .line 356
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_a3} :catch_a6
    .catchall {:try_start_d .. :try_end_a3} :catchall_1fd

    .line 358
    :cond_a3
    add-int/lit8 v5, v7, 0x1

    .line 362
    goto :goto_73

    .line 364
    :catch_a6
    move-exception v4

    :cond_a7
    nop

    .line 367
    :try_start_a8
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c4

    .line 368
    # getter for: Lcom/deepseek/chat/mod/OverlayManager;->REPO_PROMPT_FILES:[Ljava/lang/String;
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$900()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_b4
    if-ge v6, v5, :cond_c4

    aget-object v7, v4, v6

    .line 369
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c1

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    :cond_c1
    add-int/lit8 v6, v6, 0x1

    goto :goto_b4

    .line 374
    :cond_c4
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1cb

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_d4} :catch_1ff
    .catchall {:try_start_a8 .. :try_end_d4} :catchall_1fd

    .line 377
    :try_start_d4
    iget-boolean v5, p0, Lcom/deepseek/chat/mod/OverlayManager$2;->val$isPurge:Z
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_d6} :catch_1b0
    .catchall {:try_start_d4 .. :try_end_d6} :catchall_1fd

    if-eqz v5, :cond_10c

    .line 379
    :try_start_d8
    new-instance v5, Ljava/net/URL;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "https://purge.jsdelivr.net/gh/laoto1/PROMPT@main/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    .line 381
    const-string v6, "GET"

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 382
    const/16 v6, 0xfa0

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 383
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 384
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 385
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_109
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_109} :catch_10a
    .catchall {:try_start_d8 .. :try_end_109} :catchall_1fd

    goto :goto_10b

    .line 386
    :catch_10a
    move-exception v5

    :goto_10b
    nop

    .line 390
    :cond_10c
    :try_start_10c
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->fetchFileCommitDate(Ljava/lang/String;)J
    invoke-static {v4}, Lcom/deepseek/chat/mod/OverlayManager;->access$1000(Ljava/lang/String;)J

    move-result-wide v5

    .line 393
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "https://cdn.jsdelivr.net/gh/laoto1/PROMPT@main/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "?t="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 394
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 395
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;

    .line 396
    const-string v8, "GET"

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 397
    const/16 v8, 0x1f40

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 398
    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 400
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    .line 401
    if-ne v8, v3, :cond_1af

    .line 402
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-direct {v9, v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 403
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 405
    :goto_164
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_174

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_164

    .line 406
    :cond_174
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 407
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 409
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 410
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1af

    .line 411
    const-string v8, ".json"

    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1a4

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1a4

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1a4

    .line 412
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->parseJsonPrompts(Ljava/lang/String;Ljava/util/ArrayList;)V
    invoke-static {v7, v0}, Lcom/deepseek/chat/mod/OverlayManager;->access$1100(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1af

    .line 413
    :cond_1a4
    const-string v8, ".txt"

    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1af

    .line 414
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->parseTxtPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;J)V
    invoke-static {v4, v7, v0, v5, v6}, Lcom/deepseek/chat/mod/OverlayManager;->access$1200(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;J)V
    :try_end_1af
    .catch Ljava/lang/Exception; {:try_start_10c .. :try_end_1af} :catch_1b0
    .catchall {:try_start_10c .. :try_end_1af} :catchall_1fd

    .line 420
    :cond_1af
    :goto_1af
    goto :goto_1c9

    .line 418
    :catch_1b0
    move-exception v5

    .line 419
    :try_start_1b1
    const-string v6, "DSOverlay"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed fetching "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 421
    :goto_1c9
    goto/16 :goto_c8

    .line 423
    :cond_1cb
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1ef

    .line 424
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->sortPromptsByDate(Ljava/util/ArrayList;)V
    invoke-static {v0}, Lcom/deepseek/chat/mod/OverlayManager;->access$1300(Ljava/util/ArrayList;)V

    .line 425
    # getter for: Lcom/deepseek/chat/mod/OverlayManager;->nsfwPrompts:Ljava/util/ArrayList;
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$1400()Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2
    :try_end_1d9
    .catch Ljava/lang/Exception; {:try_start_1b1 .. :try_end_1d9} :catch_1ff
    .catchall {:try_start_1b1 .. :try_end_1d9} :catchall_1fd

    .line 426
    :try_start_1d9
    # getter for: Lcom/deepseek/chat/mod/OverlayManager;->nsfwPrompts:Ljava/util/ArrayList;
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$1400()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 427
    # getter for: Lcom/deepseek/chat/mod/OverlayManager;->nsfwPrompts:Ljava/util/ArrayList;
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$1400()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 428
    monitor-exit v2
    :try_end_1e8
    .catchall {:try_start_1d9 .. :try_end_1e8} :catchall_1ec

    .line 429
    :try_start_1e8
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->savePromptsToCache()V
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$1500()V
    :try_end_1eb
    .catch Ljava/lang/Exception; {:try_start_1e8 .. :try_end_1eb} :catch_1ff
    .catchall {:try_start_1e8 .. :try_end_1eb} :catchall_1fd

    goto :goto_1ef

    .line 428
    :catchall_1ec
    move-exception v0

    :try_start_1ed
    monitor-exit v2
    :try_end_1ee
    .catchall {:try_start_1ed .. :try_end_1ee} :catchall_1ec

    :try_start_1ee
    throw v0
    :try_end_1ef
    .catch Ljava/lang/Exception; {:try_start_1ee .. :try_end_1ef} :catch_1ff
    .catchall {:try_start_1ee .. :try_end_1ef} :catchall_1fd

    .line 434
    :cond_1ef
    :goto_1ef
    # setter for: Lcom/deepseek/chat/mod/OverlayManager;->isPurgingCache:Z
    invoke-static {v1}, Lcom/deepseek/chat/mod/OverlayManager;->access$1602(Z)Z

    .line 435
    # getter for: Lcom/deepseek/chat/mod/OverlayManager;->mainHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$300()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_21d

    iget-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$2;->val$onComplete:Ljava/lang/Runnable;

    if-eqz v0, :cond_21d

    .line 436
    goto :goto_214

    .line 434
    :catchall_1fd
    move-exception v0

    goto :goto_21e

    .line 431
    :catch_1ff
    move-exception v0

    .line 432
    :try_start_200
    const-string v2, "DSOverlay"

    const-string v3, "fetchOnlinePrompts error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_207
    .catchall {:try_start_200 .. :try_end_207} :catchall_1fd

    .line 434
    # setter for: Lcom/deepseek/chat/mod/OverlayManager;->isPurgingCache:Z
    invoke-static {v1}, Lcom/deepseek/chat/mod/OverlayManager;->access$1602(Z)Z

    .line 435
    # getter for: Lcom/deepseek/chat/mod/OverlayManager;->mainHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$300()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_21d

    iget-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$2;->val$onComplete:Ljava/lang/Runnable;

    if-eqz v0, :cond_21d

    .line 436
    :goto_214
    # getter for: Lcom/deepseek/chat/mod/OverlayManager;->mainHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$300()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/deepseek/chat/mod/OverlayManager$2;->val$onComplete:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 439
    :cond_21d
    return-void

    .line 434
    :goto_21e
    # setter for: Lcom/deepseek/chat/mod/OverlayManager;->isPurgingCache:Z
    invoke-static {v1}, Lcom/deepseek/chat/mod/OverlayManager;->access$1602(Z)Z

    .line 435
    # getter for: Lcom/deepseek/chat/mod/OverlayManager;->mainHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$300()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_234

    iget-object v1, p0, Lcom/deepseek/chat/mod/OverlayManager$2;->val$onComplete:Ljava/lang/Runnable;

    if-eqz v1, :cond_234

    .line 436
    # getter for: Lcom/deepseek/chat/mod/OverlayManager;->mainHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$300()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/deepseek/chat/mod/OverlayManager$2;->val$onComplete:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 438
    :cond_234
    goto :goto_236

    :goto_235
    throw v0

    :goto_236
    goto :goto_235
.end method
