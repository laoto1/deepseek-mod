.class Lcom/deepseek/chat/mod/OverlayManager$4;
.super Ljava/lang/Object;
.source "OverlayManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepseek/chat/mod/OverlayManager;->checkForUpdates(ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$onFinished:Ljava/lang/Runnable;

.field final synthetic val$silent:Z


# direct methods
.method constructor <init>(ZLjava/lang/Runnable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 704
    iput-boolean p1, p0, Lcom/deepseek/chat/mod/OverlayManager$4;->val$silent:Z

    iput-object p2, p0, Lcom/deepseek/chat/mod/OverlayManager$4;->val$onFinished:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 18

    .line 706
    move-object/from16 v1, p0

    const-string v0, "\"browser_download_url\":\""

    .line 708
    const/4 v3, 0x0

    :try_start_5
    new-instance v4, Ljava/net/URL;

    const-string v5, "https://api.github.com/repos/laoto1/deepseek-mod/releases/latest"

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 709
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    .line 710
    const-string v5, "GET"

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 711
    const-string v5, "User-Agent"

    const-string v6, "DeepSeekMod-Android"

    invoke-virtual {v4, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    const-string v5, "Accept"

    const-string v6, "application/vnd.github+json"

    invoke-virtual {v4, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    const/16 v5, 0x1770

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 714
    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 716
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 717
    const/16 v6, 0xc8

    if-ne v5, v6, :cond_14e

    .line 718
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 719
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 721
    :goto_4a
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_54

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4a

    .line 722
    :cond_54
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 723
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 725
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 726
    nop

    .line 727
    const-string v5, "\"tag_name\":\""

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_65} :catch_16c
    .catchall {:try_start_5 .. :try_end_65} :catchall_168

    .line 728
    const-string v6, "\""

    const-string v7, ""

    const/4 v8, -0x1

    if-eq v5, v8, :cond_79

    .line 729
    add-int/lit8 v5, v5, 0xc

    .line 730
    :try_start_6e
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v9

    .line 731
    if-eq v9, v8, :cond_79

    invoke-virtual {v4, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_7a

    .line 734
    :cond_79
    move-object v5, v7

    :goto_7a
    nop

    .line 735
    const-string v9, "\"name\":\""

    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 736
    if-eq v9, v8, :cond_90

    .line 737
    add-int/lit8 v9, v9, 0x8

    .line 738
    invoke-virtual {v4, v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v10

    .line 739
    if-eq v10, v8, :cond_90

    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    goto :goto_91

    .line 742
    :cond_90
    move-object v9, v7

    :goto_91
    nop

    .line 743
    const-string v10, "\"body\":\""

    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 744
    if-eq v10, v8, :cond_b5

    .line 745
    add-int/lit8 v10, v10, 0x8

    .line 746
    invoke-virtual {v4, v6, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v11

    .line 747
    if-eq v11, v8, :cond_b5

    invoke-virtual {v4, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const-string v11, "\\n"

    const-string v12, "\n"

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "\\r"

    invoke-virtual {v10, v11, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    goto :goto_b6

    .line 750
    :cond_b5
    move-object v10, v7

    :goto_b6
    nop

    .line 751
    const-string v11, "\"published_at\":\""

    invoke-virtual {v4, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 752
    if-eq v11, v8, :cond_cd

    .line 753
    add-int/lit8 v11, v11, 0x10

    .line 754
    invoke-virtual {v4, v6, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v12

    .line 755
    if-eq v12, v8, :cond_cd

    invoke-virtual {v4, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    move-object v12, v11

    goto :goto_ce

    .line 758
    :cond_cd
    move-object v12, v7

    :goto_ce
    nop

    .line 759
    nop

    .line 760
    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_d4} :catch_16c
    .catchall {:try_start_6e .. :try_end_d4} :catchall_168

    .line 761
    :goto_d4
    if-eq v11, v8, :cond_11c

    .line 762
    add-int/lit8 v15, v11, 0x18

    .line 763
    const/16 v16, 0x0

    :try_start_da
    invoke-virtual {v4, v6, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 764
    if-eq v2, v8, :cond_115

    .line 765
    invoke-virtual {v4, v15, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 766
    const-string v13, ".apk"

    invoke-virtual {v2, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_115

    .line 767
    nop

    .line 768
    const-string v0, "\"size\":"

    invoke-virtual {v4, v0, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    .line 769
    if-eq v0, v8, :cond_112

    .line 770
    const-string v6, ","

    invoke-virtual {v4, v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_fb} :catch_14c
    .catchall {:try_start_da .. :try_end_fb} :catchall_192

    .line 771
    if-eq v6, v8, :cond_10f

    .line 773
    add-int/lit8 v0, v0, 0x7

    :try_start_ff
    invoke-virtual {v4, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v4, "[^0-9]"

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_10d} :catch_10e
    .catchall {:try_start_ff .. :try_end_10d} :catchall_192

    .line 774
    goto :goto_111

    :catch_10e
    move-exception v0

    .line 776
    :cond_10f
    const-wide/16 v13, 0x0

    :goto_111
    goto :goto_121

    .line 769
    :cond_112
    const-wide/16 v13, 0x0

    goto :goto_121

    .line 780
    :cond_115
    add-int/lit8 v11, v11, 0x1

    :try_start_117
    invoke-virtual {v4, v0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v11

    .line 781
    goto :goto_d4

    .line 761
    :cond_11c
    const/16 v16, 0x0

    move-object v2, v7

    const-wide/16 v13, 0x0

    .line 783
    :goto_121
    const-string v0, "mod-v"

    invoke-virtual {v5, v0, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "v"

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 784
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_150

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->getCurrentAppVersion()Ljava/lang/String;
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$1900()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->isNewerVersion(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v6}, Lcom/deepseek/chat/mod/OverlayManager;->access$2000(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_150

    .line 785
    new-instance v4, Lcom/deepseek/chat/mod/OverlayManager$UpdateInfo;

    move-object v7, v9

    move-object v8, v10

    move-wide v10, v13

    move-object v9, v2

    invoke-direct/range {v4 .. v12}, Lcom/deepseek/chat/mod/OverlayManager$UpdateInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    :try_end_14a
    .catch Ljava/lang/Exception; {:try_start_117 .. :try_end_14a} :catch_14c
    .catchall {:try_start_117 .. :try_end_14a} :catchall_192

    move-object v3, v4

    goto :goto_150

    .line 788
    :catch_14c
    move-exception v0

    goto :goto_16f

    .line 717
    :cond_14e
    const/16 v16, 0x0

    .line 791
    :cond_150
    :goto_150
    # setter for: Lcom/deepseek/chat/mod/OverlayManager;->isCheckingUpdate:Z
    invoke-static/range {v16 .. v16}, Lcom/deepseek/chat/mod/OverlayManager;->access$2102(Z)Z

    .line 792
    nop

    .line 793
    # getter for: Lcom/deepseek/chat/mod/OverlayManager;->mainHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$300()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_190

    .line 794
    # getter for: Lcom/deepseek/chat/mod/OverlayManager;->mainHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$300()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/deepseek/chat/mod/OverlayManager$4$1;

    iget-boolean v4, v1, Lcom/deepseek/chat/mod/OverlayManager$4;->val$silent:Z

    iget-object v5, v1, Lcom/deepseek/chat/mod/OverlayManager$4;->val$onFinished:Ljava/lang/Runnable;

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/deepseek/chat/mod/OverlayManager$4$1;-><init>(Lcom/deepseek/chat/mod/OverlayManager$4;Lcom/deepseek/chat/mod/OverlayManager$UpdateInfo;ZLjava/lang/Runnable;)V

    goto :goto_18d

    .line 791
    :catchall_168
    move-exception v0

    const/16 v16, 0x0

    goto :goto_193

    .line 788
    :catch_16c
    move-exception v0

    const/16 v16, 0x0

    .line 789
    :goto_16f
    :try_start_16f
    const-string v2, "DSOverlay"

    const-string v4, "checkForUpdates failed"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_176
    .catchall {:try_start_16f .. :try_end_176} :catchall_192

    .line 791
    # setter for: Lcom/deepseek/chat/mod/OverlayManager;->isCheckingUpdate:Z
    invoke-static/range {v16 .. v16}, Lcom/deepseek/chat/mod/OverlayManager;->access$2102(Z)Z

    .line 792
    nop

    .line 793
    # getter for: Lcom/deepseek/chat/mod/OverlayManager;->mainHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$300()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_190

    .line 794
    # getter for: Lcom/deepseek/chat/mod/OverlayManager;->mainHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$300()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/deepseek/chat/mod/OverlayManager$4$1;

    iget-boolean v4, v1, Lcom/deepseek/chat/mod/OverlayManager$4;->val$silent:Z

    iget-object v5, v1, Lcom/deepseek/chat/mod/OverlayManager$4;->val$onFinished:Ljava/lang/Runnable;

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/deepseek/chat/mod/OverlayManager$4$1;-><init>(Lcom/deepseek/chat/mod/OverlayManager$4;Lcom/deepseek/chat/mod/OverlayManager$UpdateInfo;ZLjava/lang/Runnable;)V

    :goto_18d
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 808
    :cond_190
    nop

    .line 809
    return-void

    .line 791
    :catchall_192
    move-exception v0

    :goto_193
    # setter for: Lcom/deepseek/chat/mod/OverlayManager;->isCheckingUpdate:Z
    invoke-static/range {v16 .. v16}, Lcom/deepseek/chat/mod/OverlayManager;->access$2102(Z)Z

    .line 792
    nop

    .line 793
    # getter for: Lcom/deepseek/chat/mod/OverlayManager;->mainHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$300()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_1ad

    .line 794
    # getter for: Lcom/deepseek/chat/mod/OverlayManager;->mainHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$300()Landroid/os/Handler;

    move-result-object v2

    new-instance v4, Lcom/deepseek/chat/mod/OverlayManager$4$1;

    iget-boolean v5, v1, Lcom/deepseek/chat/mod/OverlayManager$4;->val$silent:Z

    iget-object v6, v1, Lcom/deepseek/chat/mod/OverlayManager$4;->val$onFinished:Ljava/lang/Runnable;

    invoke-direct {v4, v1, v3, v5, v6}, Lcom/deepseek/chat/mod/OverlayManager$4$1;-><init>(Lcom/deepseek/chat/mod/OverlayManager$4;Lcom/deepseek/chat/mod/OverlayManager$UpdateInfo;ZLjava/lang/Runnable;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 808
    :cond_1ad
    goto :goto_1af

    :goto_1ae
    throw v0

    :goto_1af
    goto :goto_1ae
.end method
