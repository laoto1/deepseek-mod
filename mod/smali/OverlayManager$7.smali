.class Lcom/deepseek/chat/mod/OverlayManager$7;
.super Ljava/lang/Object;
.source "OverlayManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepseek/chat/mod/OverlayManager;->downloadAndInstallApk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$downloadUrl:Ljava/lang/String;

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$onDone:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 953
    iput-object p1, p0, Lcom/deepseek/chat/mod/OverlayManager$7;->val$fileName:Ljava/lang/String;

    iput-object p2, p0, Lcom/deepseek/chat/mod/OverlayManager$7;->val$downloadUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/deepseek/chat/mod/OverlayManager$7;->val$onDone:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 955
    const-string v0, "DeepSeekMod-Android"

    const-string v1, "User-Agent"

    .line 956
    nop

    .line 958
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_7
    sget-object v4, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 960
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_16

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 961
    :cond_16
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/deepseek/chat/mod/OverlayManager$7;->val$fileName:Ljava/lang/String;

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1d} :catch_bc
    .catchall {:try_start_7 .. :try_end_1d} :catchall_ba

    .line 963
    :try_start_1d
    new-instance v2, Ljava/net/URL;

    iget-object v4, p0, Lcom/deepseek/chat/mod/OverlayManager$7;->val$downloadUrl:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 964
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 965
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 966
    invoke-virtual {v2, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    const/16 v6, 0x3a98

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 968
    const/16 v6, 0x7530

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 970
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 972
    const/16 v7, 0x12e

    if-eq v6, v7, :cond_4f

    const/16 v7, 0x12d

    if-eq v6, v7, :cond_4f

    const/16 v7, 0x133

    if-eq v6, v7, :cond_4f

    const/16 v7, 0x134

    if-ne v6, v7, :cond_66

    .line 973
    :cond_4f
    const-string v6, "Location"

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 974
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 975
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 976
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 977
    invoke-virtual {v2, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    :cond_66
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 981
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 982
    const/16 v6, 0x2000

    new-array v6, v6, [B

    .line 984
    :goto_73
    invoke-virtual {v0, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_7e

    .line 985
    invoke-virtual {v1, v6, v3, v7}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_73

    .line 987
    :cond_7e
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 988
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 989
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 990
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 991
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9c

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v0
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_94} :catch_b7
    .catchall {:try_start_1d .. :try_end_94} :catchall_b4

    const-wide/32 v6, 0xf4240

    cmp-long v2, v0, v6

    if-lez v2, :cond_9c

    goto :goto_9d

    :cond_9c
    const/4 v4, 0x0

    .line 995
    :goto_9d
    # setter for: Lcom/deepseek/chat/mod/OverlayManager;->isDownloadingUpdate:Z
    invoke-static {v3}, Lcom/deepseek/chat/mod/OverlayManager;->access$2602(Z)Z

    .line 996
    nop

    .line 997
    nop

    .line 998
    # getter for: Lcom/deepseek/chat/mod/OverlayManager;->mainHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$300()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_dd

    .line 999
    # getter for: Lcom/deepseek/chat/mod/OverlayManager;->mainHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$300()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/deepseek/chat/mod/OverlayManager$7$1;

    iget-object v2, p0, Lcom/deepseek/chat/mod/OverlayManager$7;->val$onDone:Ljava/lang/Runnable;

    invoke-direct {v1, p0, v2, v4, v5}, Lcom/deepseek/chat/mod/OverlayManager$7$1;-><init>(Lcom/deepseek/chat/mod/OverlayManager$7;Ljava/lang/Runnable;ZLjava/io/File;)V

    goto :goto_da

    .line 995
    :catchall_b4
    move-exception v0

    move-object v2, v5

    goto :goto_df

    .line 992
    :catch_b7
    move-exception v0

    move-object v2, v5

    goto :goto_bd

    .line 995
    :catchall_ba
    move-exception v0

    goto :goto_df

    .line 992
    :catch_bc
    move-exception v0

    .line 993
    :goto_bd
    :try_start_bd
    const-string v1, "DSOverlay"

    const-string v4, "Download APK failed"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c4
    .catchall {:try_start_bd .. :try_end_c4} :catchall_ba

    .line 995
    # setter for: Lcom/deepseek/chat/mod/OverlayManager;->isDownloadingUpdate:Z
    invoke-static {v3}, Lcom/deepseek/chat/mod/OverlayManager;->access$2602(Z)Z

    .line 996
    nop

    .line 997
    nop

    .line 998
    # getter for: Lcom/deepseek/chat/mod/OverlayManager;->mainHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$300()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_dd

    .line 999
    # getter for: Lcom/deepseek/chat/mod/OverlayManager;->mainHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$300()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/deepseek/chat/mod/OverlayManager$7$1;

    iget-object v4, p0, Lcom/deepseek/chat/mod/OverlayManager$7;->val$onDone:Ljava/lang/Runnable;

    invoke-direct {v1, p0, v4, v3, v2}, Lcom/deepseek/chat/mod/OverlayManager$7$1;-><init>(Lcom/deepseek/chat/mod/OverlayManager$7;Ljava/lang/Runnable;ZLjava/io/File;)V

    :goto_da
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1010
    :cond_dd
    nop

    .line 1011
    return-void

    .line 995
    :goto_df
    # setter for: Lcom/deepseek/chat/mod/OverlayManager;->isDownloadingUpdate:Z
    invoke-static {v3}, Lcom/deepseek/chat/mod/OverlayManager;->access$2602(Z)Z

    .line 996
    nop

    .line 997
    nop

    .line 998
    # getter for: Lcom/deepseek/chat/mod/OverlayManager;->mainHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$300()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_f8

    .line 999
    # getter for: Lcom/deepseek/chat/mod/OverlayManager;->mainHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$300()Landroid/os/Handler;

    move-result-object v1

    new-instance v4, Lcom/deepseek/chat/mod/OverlayManager$7$1;

    iget-object v5, p0, Lcom/deepseek/chat/mod/OverlayManager$7;->val$onDone:Ljava/lang/Runnable;

    invoke-direct {v4, p0, v5, v3, v2}, Lcom/deepseek/chat/mod/OverlayManager$7$1;-><init>(Lcom/deepseek/chat/mod/OverlayManager$7;Ljava/lang/Runnable;ZLjava/io/File;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1010
    :cond_f8
    goto :goto_fa

    :goto_f9
    throw v0

    :goto_fa
    goto :goto_f9
.end method
