.class Lcom/deepseek/chat/mod/OverlayManager$21;
.super Landroid/os/FileObserver;
.source "OverlayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepseek/chat/mod/OverlayManager;->startFileObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 2999
    invoke-direct {p0, p1, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 3

    .line 3002
    if-eqz p2, :cond_16

    const-string p1, "chat_log.jsonl"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 3003
    # getter for: Lcom/deepseek/chat/mod/OverlayManager;->mainHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$300()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/deepseek/chat/mod/OverlayManager$21$1;

    invoke-direct {p2, p0}, Lcom/deepseek/chat/mod/OverlayManager$21$1;-><init>(Lcom/deepseek/chat/mod/OverlayManager$21;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3013
    :cond_16
    return-void
.end method
