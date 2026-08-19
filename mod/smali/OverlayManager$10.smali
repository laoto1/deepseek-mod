.class Lcom/deepseek/chat/mod/OverlayManager$10;
.super Ljava/lang/Object;
.source "OverlayManager.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepseek/chat/mod/OverlayManager;->startBrandAnimation(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$brandTv:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1600
    iput-object p1, p0, Lcom/deepseek/chat/mod/OverlayManager$10;->val$brandTv:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    .line 1602
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1603
    iget-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$10;->val$brandTv:Landroid/widget/TextView;

    const v1, 0x3e4ccccd    # 0.2f

    mul-float v1, v1, p1

    const v2, 0x3f4ccccd    # 0.8f

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1604
    iget-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$10;->val$brandTv:Landroid/widget/TextView;

    const v1, 0x3d4ccccd    # 0.05f

    mul-float p1, p1, v1

    const v1, 0x3f7851ec    # 0.97f

    add-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setScaleX(F)V

    .line 1605
    iget-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$10;->val$brandTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setScaleY(F)V

    .line 1606
    return-void
.end method
