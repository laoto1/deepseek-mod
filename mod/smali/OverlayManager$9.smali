.class Lcom/deepseek/chat/mod/OverlayManager$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OverlayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepseek/chat/mod/OverlayManager;->closePanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$container:Landroid/view/View;

.field final synthetic val$decor:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 3

    .line 1575
    iput-object p1, p0, Lcom/deepseek/chat/mod/OverlayManager$9;->val$decor:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/deepseek/chat/mod/OverlayManager$9;->val$container:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1577
    :try_start_0
    iget-object p1, p0, Lcom/deepseek/chat/mod/OverlayManager$9;->val$decor:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$9;->val$container:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_9

    :catch_8
    move-exception p1

    .line 1578
    :goto_9
    return-void
.end method
