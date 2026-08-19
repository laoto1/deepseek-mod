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

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 252
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 3

    .line 271
    # getter for: Lcom/deepseek/chat/mod/OverlayManager;->currentActivity:Landroid/app/Activity;
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$000()Landroid/app/Activity;

    move-result-object v0

    if-ne p1, v0, :cond_1a

    .line 272
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->stopPulse()V
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$600()V

    const/4 p1, 0x0

    # setter for: Lcom/deepseek/chat/mod/OverlayManager;->bubbleAttached:Z
    invoke-static {p1}, Lcom/deepseek/chat/mod/OverlayManager;->access$702(Z)Z

    .line 273
    const/4 p1, 0x0

    # setter for: Lcom/deepseek/chat/mod/OverlayManager;->bubbleView:Landroid/view/View;
    invoke-static {p1}, Lcom/deepseek/chat/mod/OverlayManager;->access$802(Landroid/view/View;)Landroid/view/View;

    # setter for: Lcom/deepseek/chat/mod/OverlayManager;->panelView:Landroid/view/View;
    invoke-static {p1}, Lcom/deepseek/chat/mod/OverlayManager;->access$902(Landroid/view/View;)Landroid/view/View;

    # setter for: Lcom/deepseek/chat/mod/OverlayManager;->contentContainer:Landroid/widget/FrameLayout;
    invoke-static {p1}, Lcom/deepseek/chat/mod/OverlayManager;->access$1002(Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    # setter for: Lcom/deepseek/chat/mod/OverlayManager;->currentActivity:Landroid/app/Activity;
    invoke-static {p1}, Lcom/deepseek/chat/mod/OverlayManager;->access$002(Landroid/app/Activity;)Landroid/app/Activity;

    .line 275
    :cond_1a
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    .line 267
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 6

    .line 255
    # setter for: Lcom/deepseek/chat/mod/OverlayManager;->currentActivity:Landroid/app/Activity;
    invoke-static {p1}, Lcom/deepseek/chat/mod/OverlayManager;->access$002(Landroid/app/Activity;)Landroid/app/Activity;

    .line 256
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->requestPermissionsIfNeeded(Landroid/app/Activity;)V
    invoke-static {p1}, Lcom/deepseek/chat/mod/OverlayManager;->access$100(Landroid/app/Activity;)V

    .line 257
    # getter for: Lcom/deepseek/chat/mod/OverlayManager;->mainHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$300()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/deepseek/chat/mod/OverlayManager$1$1;

    invoke-direct {v1, p0, p1}, Lcom/deepseek/chat/mod/OverlayManager$1$1;-><init>(Lcom/deepseek/chat/mod/OverlayManager$1;Landroid/app/Activity;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 260
    # getter for: Lcom/deepseek/chat/mod/OverlayManager;->autoCheckedOnStartup:Z
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$400()Z

    move-result p1

    if-nez p1, :cond_2c

    .line 261
    const/4 p1, 0x1

    # setter for: Lcom/deepseek/chat/mod/OverlayManager;->autoCheckedOnStartup:Z
    invoke-static {p1}, Lcom/deepseek/chat/mod/OverlayManager;->access$402(Z)Z

    .line 262
    # getter for: Lcom/deepseek/chat/mod/OverlayManager;->mainHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$300()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/deepseek/chat/mod/OverlayManager$1$2;

    invoke-direct {v0, p0}, Lcom/deepseek/chat/mod/OverlayManager$1$2;-><init>(Lcom/deepseek/chat/mod/OverlayManager$1;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 266
    :cond_2c
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 269
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    .line 253
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    .line 268
    return-void
.end method
