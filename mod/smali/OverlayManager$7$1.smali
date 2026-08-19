.class Lcom/deepseek/chat/mod/OverlayManager$7$1;
.super Ljava/lang/Object;
.source "OverlayManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepseek/chat/mod/OverlayManager$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/deepseek/chat/mod/OverlayManager$7;

.field final synthetic val$finalFile:Ljava/io/File;

.field final synthetic val$isOk:Z

.field final synthetic val$onDone:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/deepseek/chat/mod/OverlayManager$7;Ljava/lang/Runnable;ZLjava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 999
    iput-object p2, p0, Lcom/deepseek/chat/mod/OverlayManager$7$1;->val$onDone:Ljava/lang/Runnable;

    iput-boolean p3, p0, Lcom/deepseek/chat/mod/OverlayManager$7$1;->val$isOk:Z

    iput-object p4, p0, Lcom/deepseek/chat/mod/OverlayManager$7$1;->val$finalFile:Ljava/io/File;

    iput-object p1, p0, Lcom/deepseek/chat/mod/OverlayManager$7$1;->this$0:Lcom/deepseek/chat/mod/OverlayManager$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1001
    iget-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$7$1;->val$onDone:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$7$1;->val$onDone:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1002
    :cond_9
    iget-boolean v0, p0, Lcom/deepseek/chat/mod/OverlayManager$7$1;->val$isOk:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$7$1;->val$finalFile:Ljava/io/File;

    if-eqz v0, :cond_17

    .line 1003
    iget-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$7$1;->val$finalFile:Ljava/io/File;

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->triggerApkInstall(Ljava/io/File;)V
    invoke-static {v0}, Lcom/deepseek/chat/mod/OverlayManager;->access$2700(Ljava/io/File;)V

    goto :goto_25

    .line 1005
    :cond_17
    # getter for: Lcom/deepseek/chat/mod/OverlayManager;->appContext:Landroid/content/Context;
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$2400()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u274c T\u1ea3i file th\u1ea5t b\u1ea1i, vui l\u00f2ng th\u1eed l\u1ea1i sau!"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1007
    :goto_25
    return-void
.end method
