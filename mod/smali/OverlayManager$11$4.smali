.class Lcom/deepseek/chat/mod/OverlayManager$11$4;
.super Ljava/lang/Object;
.source "OverlayManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepseek/chat/mod/OverlayManager$11;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/deepseek/chat/mod/OverlayManager$11;

.field final synthetic val$bodyContainer:Landroid/widget/FrameLayout;

.field final synthetic val$toNsfw:Z


# direct methods
.method constructor <init>(Lcom/deepseek/chat/mod/OverlayManager$11;Landroid/widget/FrameLayout;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 1843
    iput-object p2, p0, Lcom/deepseek/chat/mod/OverlayManager$11$4;->val$bodyContainer:Landroid/widget/FrameLayout;

    iput-boolean p3, p0, Lcom/deepseek/chat/mod/OverlayManager$11$4;->val$toNsfw:Z

    iput-object p1, p0, Lcom/deepseek/chat/mod/OverlayManager$11$4;->this$0:Lcom/deepseek/chat/mod/OverlayManager$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1845
    iget-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$11$4;->val$bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1846
    iget-boolean v0, p0, Lcom/deepseek/chat/mod/OverlayManager$11$4;->val$toNsfw:Z

    if-eqz v0, :cond_f

    .line 1847
    iget-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$11$4;->val$bodyContainer:Landroid/widget/FrameLayout;

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->renderNsfwBody(Landroid/widget/FrameLayout;)V
    invoke-static {v0}, Lcom/deepseek/chat/mod/OverlayManager;->access$2300(Landroid/widget/FrameLayout;)V

    goto :goto_14

    .line 1849
    :cond_f
    iget-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$11$4;->val$bodyContainer:Landroid/widget/FrameLayout;

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->renderChatAiBody(Landroid/widget/FrameLayout;)V
    invoke-static {v0}, Lcom/deepseek/chat/mod/OverlayManager;->access$2400(Landroid/widget/FrameLayout;)V

    .line 1851
    :goto_14
    iget-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$11$4;->val$bodyContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0xf

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dp(I)I
    invoke-static {v1}, Lcom/deepseek/chat/mod/OverlayManager;->access$2100(I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1852
    iget-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$11$4;->val$bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xf0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const v2, 0x3fe66666    # 1.8f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 1853
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1854
    return-void
.end method
