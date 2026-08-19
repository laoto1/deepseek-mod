.class Lcom/deepseek/chat/mod/OverlayManager$1;
.super Ljava/lang/Object;
.source "OverlayManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepseek/chat/mod/OverlayManager;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 223
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 3

    .line 236
    # getter for: Lcom/deepseek/chat/mod/OverlayManager;->currentActivity:Landroid/app/Activity;
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$000()Landroid/app/Activity;

    move-result-object v0

    if-ne p1, v0, :cond_1a

    .line 237
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->stopPulse()V
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$400()V

    const/4 p1, 0x0

    # setter for: Lcom/deepseek/chat/mod/OverlayManager;->bubbleAttached:Z
    invoke-static {p1}, Lcom/deepseek/chat/mod/OverlayManager;->access$502(Z)Z

    .line 238
    const/4 p1, 0x0

    # setter for: Lcom/deepseek/chat/mod/OverlayManager;->bubbleView:Landroid/view/View;
    invoke-static {p1}, Lcom/deepseek/chat/mod/OverlayManager;->access$602(Landroid/view/View;)Landroid/view/View;

    # setter for: Lcom/deepseek/chat/mod/OverlayManager;->panelView:Landroid/view/View;
    invoke-static {p1}, Lcom/deepseek/chat/mod/OverlayManager;->access$702(Landroid/view/View;)Landroid/view/View;

    # setter for: Lcom/deepseek/chat/mod/OverlayManager;->contentContainer:Landroid/widget/FrameLayout;
    invoke-static {p1}, Lcom/deepseek/chat/mod/OverlayManager;->access$802(Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    # setter for: Lcom/deepseek/chat/mod/OverlayManager;->currentActivity:Landroid/app/Activity;
    invoke-static {p1}, Lcom/deepseek/chat/mod/OverlayManager;->access$002(Landroid/app/Activity;)Landroid/app/Activity;

    .line 240
    :cond_1a
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    .line 232
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 6

    .line 226
    # setter for: Lcom/deepseek/chat/mod/OverlayManager;->currentActivity:Landroid/app/Activity;
    invoke-static {p1}, Lcom/deepseek/chat/mod/OverlayManager;->access$002(Landroid/app/Activity;)Landroid/app/Activity;

    .line 227
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->requestPermissionsIfNeeded(Landroid/app/Activity;)V
    invoke-static {p1}, Lcom/deepseek/chat/mod/OverlayManager;->access$100(Landroid/app/Activity;)V

    .line 228
    # getter for: Lcom/deepseek/chat/mod/OverlayManager;->mainHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$300()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/deepseek/chat/mod/OverlayManager$1$1;

    invoke-direct {v1, p0, p1}, Lcom/deepseek/chat/mod/OverlayManager$1$1;-><init>(Lcom/deepseek/chat/mod/OverlayManager$1;Landroid/app/Activity;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 231
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 234
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    .line 224
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    .line 233
    return-void
.end method
