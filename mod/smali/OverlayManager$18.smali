.class Lcom/deepseek/chat/mod/OverlayManager$18;
.super Ljava/lang/Object;
.source "OverlayManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepseek/chat/mod/OverlayManager;->renderNsfwBody(Landroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$container:Landroid/widget/FrameLayout;

.field final synthetic val$purgeBtn:Landroid/widget/LinearLayout;

.field final synthetic val$purgeTxt:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2565
    iput-object p1, p0, Lcom/deepseek/chat/mod/OverlayManager$18;->val$purgeTxt:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/deepseek/chat/mod/OverlayManager$18;->val$purgeBtn:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/deepseek/chat/mod/OverlayManager$18;->val$container:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 2567
    iget-object p1, p0, Lcom/deepseek/chat/mod/OverlayManager$18;->val$purgeTxt:Landroid/widget/TextView;

    const-string v0, "\u23f3 \u0110ang l\u00e0m m\u1edbi..."

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2568
    iget-object p1, p0, Lcom/deepseek/chat/mod/OverlayManager$18;->val$purgeBtn:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 2569
    new-instance p1, Lcom/deepseek/chat/mod/OverlayManager$18$1;

    iget-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$18;->val$purgeTxt:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/deepseek/chat/mod/OverlayManager$18;->val$purgeBtn:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/deepseek/chat/mod/OverlayManager$18;->val$container:Landroid/widget/FrameLayout;

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/deepseek/chat/mod/OverlayManager$18$1;-><init>(Lcom/deepseek/chat/mod/OverlayManager$18;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;)V

    const/4 v0, 0x1

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->fetchOnlinePrompts(ZLjava/lang/Runnable;)V
    invoke-static {v0, p1}, Lcom/deepseek/chat/mod/OverlayManager;->access$3800(ZLjava/lang/Runnable;)V

    .line 2578
    return-void
.end method
