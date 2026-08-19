.class Lcom/deepseek/chat/mod/OverlayManager$4;
.super Ljava/lang/Object;
.source "OverlayManager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepseek/chat/mod/OverlayManager;->attachBubble(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private down:J

.field private moved:Z

.field private sr:I

.field private st:I

.field private sx:F

.field private sy:F

.field final synthetic val$params:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method constructor <init>(Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1447
    iput-object p1, p0, Lcom/deepseek/chat/mod/OverlayManager$4;->val$params:Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    .line 1450
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_ba

    .line 1468
    return v2

    .line 1457
    :pswitch_a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v3, p0, Lcom/deepseek/chat/mod/OverlayManager$4;->sx:F

    sub-float/2addr v0, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v3, p0, Lcom/deepseek/chat/mod/OverlayManager$4;->sy:F

    sub-float/2addr p2, v3

    .line 1458
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x41000000    # 8.0f

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_2a

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2c

    :cond_2a
    iput-boolean v1, p0, Lcom/deepseek/chat/mod/OverlayManager$4;->moved:Z

    .line 1459
    :cond_2c
    iget-object v3, p0, Lcom/deepseek/chat/mod/OverlayManager$4;->val$params:Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p0, Lcom/deepseek/chat/mod/OverlayManager$4;->st:I

    float-to-int p2, p2

    add-int/2addr v4, p2

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1460
    iget-object p2, p0, Lcom/deepseek/chat/mod/OverlayManager$4;->val$params:Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/deepseek/chat/mod/OverlayManager$4;->sr:I

    float-to-int v0, v0

    sub-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1461
    iget-object p2, p0, Lcom/deepseek/chat/mod/OverlayManager$4;->val$params:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return v1

    .line 1463
    :pswitch_4a
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v2, 0xfa

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Landroid/view/animation/OvershootInterpolator;

    const/high16 v0, 0x40400000    # 3.0f

    invoke-direct {p2, v0}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 1464
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1465
    iget-boolean p1, p0, Lcom/deepseek/chat/mod/OverlayManager$4;->moved:Z

    if-nez p1, :cond_80

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v2, p0, Lcom/deepseek/chat/mod/OverlayManager$4;->down:J

    sub-long/2addr p1, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, p1, v2

    if-gez v0, :cond_80

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->togglePanel()V
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$1800()V

    .line 1466
    :cond_80
    return v1

    .line 1452
    :pswitch_81
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/deepseek/chat/mod/OverlayManager$4;->sx:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iput p2, p0, Lcom/deepseek/chat/mod/OverlayManager$4;->sy:F

    iget-object p2, p0, Lcom/deepseek/chat/mod/OverlayManager$4;->val$params:Landroid/widget/FrameLayout$LayoutParams;

    iget p2, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput p2, p0, Lcom/deepseek/chat/mod/OverlayManager$4;->st:I

    iget-object p2, p0, Lcom/deepseek/chat/mod/OverlayManager$4;->val$params:Landroid/widget/FrameLayout$LayoutParams;

    iget p2, p2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput p2, p0, Lcom/deepseek/chat/mod/OverlayManager$4;->sr:I

    .line 1453
    iput-boolean v2, p0, Lcom/deepseek/chat/mod/OverlayManager$4;->moved:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/deepseek/chat/mod/OverlayManager$4;->down:J

    .line 1454
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const p2, 0x3f59999a    # 0.85f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v2, 0x50

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1455
    return v1

    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_81
        :pswitch_4a
        :pswitch_a
    .end packed-switch
.end method
