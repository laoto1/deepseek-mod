.class Lcom/deepseek/chat/mod/OverlayManager$4$1;
.super Ljava/lang/Object;
.source "OverlayManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepseek/chat/mod/OverlayManager$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/deepseek/chat/mod/OverlayManager$4;

.field final synthetic val$finalInfo:Lcom/deepseek/chat/mod/OverlayManager$UpdateInfo;

.field final synthetic val$onFinished:Ljava/lang/Runnable;

.field final synthetic val$silent:Z


# direct methods
.method constructor <init>(Lcom/deepseek/chat/mod/OverlayManager$4;Lcom/deepseek/chat/mod/OverlayManager$UpdateInfo;ZLjava/lang/Runnable;)V
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

    .line 794
    iput-object p2, p0, Lcom/deepseek/chat/mod/OverlayManager$4$1;->val$finalInfo:Lcom/deepseek/chat/mod/OverlayManager$UpdateInfo;

    iput-boolean p3, p0, Lcom/deepseek/chat/mod/OverlayManager$4$1;->val$silent:Z

    iput-object p4, p0, Lcom/deepseek/chat/mod/OverlayManager$4$1;->val$onFinished:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/deepseek/chat/mod/OverlayManager$4$1;->this$0:Lcom/deepseek/chat/mod/OverlayManager$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 796
    iget-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$4$1;->val$finalInfo:Lcom/deepseek/chat/mod/OverlayManager$UpdateInfo;

    # setter for: Lcom/deepseek/chat/mod/OverlayManager;->availableUpdate:Lcom/deepseek/chat/mod/OverlayManager$UpdateInfo;
    invoke-static {v0}, Lcom/deepseek/chat/mod/OverlayManager;->access$2202(Lcom/deepseek/chat/mod/OverlayManager$UpdateInfo;)Lcom/deepseek/chat/mod/OverlayManager$UpdateInfo;

    .line 797
    iget-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$4$1;->val$finalInfo:Lcom/deepseek/chat/mod/OverlayManager$UpdateInfo;

    if-eqz v0, :cond_15

    .line 798
    # getter for: Lcom/deepseek/chat/mod/OverlayManager;->currentActivity:Landroid/app/Activity;
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$000()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 799
    iget-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$4$1;->val$finalInfo:Lcom/deepseek/chat/mod/OverlayManager$UpdateInfo;

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->showUpdateDialog(Lcom/deepseek/chat/mod/OverlayManager$UpdateInfo;)V
    invoke-static {v0}, Lcom/deepseek/chat/mod/OverlayManager;->access$2300(Lcom/deepseek/chat/mod/OverlayManager$UpdateInfo;)V

    goto :goto_42

    .line 801
    :cond_15
    iget-boolean v0, p0, Lcom/deepseek/chat/mod/OverlayManager$4$1;->val$silent:Z

    if-nez v0, :cond_42

    .line 802
    # getter for: Lcom/deepseek/chat/mod/OverlayManager;->appContext:Landroid/content/Context;
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$2400()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u2705 B\u1ea1n \u0111ang s\u1eed d\u1ee5ng phi\u00ean b\u1ea3n m\u1edbi nh\u1ea5t (v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->getCurrentAppVersion()Ljava/lang/String;
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$1900()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 804
    :cond_42
    :goto_42
    iget-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$4$1;->val$onFinished:Ljava/lang/Runnable;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$4$1;->val$onFinished:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 805
    :cond_4b
    return-void
.end method
