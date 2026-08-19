.class Lcom/deepseek/chat/mod/OverlayManager$16$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OverlayManager.java"


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

.field final synthetic val$outgoingTitle:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/deepseek/chat/mod/OverlayManager$16;Landroid/view/View;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 2258
    iput-object p2, p0, Lcom/deepseek/chat/mod/OverlayManager$16$2;->val$outgoingTitle:Landroid/view/View;

    iput-object p1, p0, Lcom/deepseek/chat/mod/OverlayManager$16$2;->this$0:Lcom/deepseek/chat/mod/OverlayManager$16;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 2260
    iget-object p1, p0, Lcom/deepseek/chat/mod/OverlayManager$16$2;->val$outgoingTitle:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2261
    iget-object p1, p0, Lcom/deepseek/chat/mod/OverlayManager$16$2;->val$outgoingTitle:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 2262
    return-void
.end method
