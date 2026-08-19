.class Lcom/deepseek/chat/mod/OverlayManager$16$3;
.super Ljava/lang/Object;
.source "OverlayManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepseek/chat/mod/OverlayManager$16;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/deepseek/chat/mod/OverlayManager$16;

.field final synthetic val$tabBtn:Landroid/widget/LinearLayout;

.field final synthetic val$tabBtnText:Landroid/widget/TextView;

.field final synthetic val$toNsfw:Z


# direct methods
.method constructor <init>(Lcom/deepseek/chat/mod/OverlayManager$16;Landroid/widget/TextView;ZLandroid/widget/LinearLayout;)V
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

    .line 2286
    iput-object p2, p0, Lcom/deepseek/chat/mod/OverlayManager$16$3;->val$tabBtnText:Landroid/widget/TextView;

    iput-boolean p3, p0, Lcom/deepseek/chat/mod/OverlayManager$16$3;->val$toNsfw:Z

    iput-object p4, p0, Lcom/deepseek/chat/mod/OverlayManager$16$3;->val$tabBtn:Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/deepseek/chat/mod/OverlayManager$16$3;->this$0:Lcom/deepseek/chat/mod/OverlayManager$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 2288
    iget-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$16$3;->val$tabBtnText:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/deepseek/chat/mod/OverlayManager$16$3;->val$toNsfw:Z

    if-eqz v1, :cond_9

    const-string v1, "\ud83d\udcac Chat AI"

    goto :goto_b

    :cond_9
    const-string v1, "\ud83d\udd25 NSFW"

    :goto_b
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2289
    iget-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$16$3;->val$tabBtn:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/deepseek/chat/mod/OverlayManager$16$3;->val$toNsfw:Z

    const/16 v2, 0xe

    if-eqz v1, :cond_24

    .line 2290
    const v1, -0xe2b128

    const v3, -0x9f5a06

    const v4, -0xc47d0a

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->makeGradBox(IIII)Landroid/graphics/drawable/GradientDrawable;
    invoke-static {v4, v1, v2, v3}, Lcom/deepseek/chat/mod/OverlayManager;->access$3100(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    goto :goto_31

    .line 2291
    :cond_24
    const v1, -0x41edc4

    const v3, -0x48e7b

    const v4, -0xbc0a2

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->makeGradBox(IIII)Landroid/graphics/drawable/GradientDrawable;
    invoke-static {v4, v1, v2, v3}, Lcom/deepseek/chat/mod/OverlayManager;->access$3100(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    .line 2289
    :goto_31
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2292
    iget-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$16$3;->val$tabBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 2293
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2294
    return-void
.end method
