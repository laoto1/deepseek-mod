.class Lcom/deepseek/chat/mod/OverlayManager$13$1;
.super Ljava/lang/Object;
.source "OverlayManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepseek/chat/mod/OverlayManager$13;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/deepseek/chat/mod/OverlayManager$13;

.field final synthetic val$container:Landroid/widget/FrameLayout;

.field final synthetic val$purgeBtn:Landroid/widget/LinearLayout;

.field final synthetic val$purgeTxt:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/deepseek/chat/mod/OverlayManager$13;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;)V
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

    .line 2101
    iput-object p2, p0, Lcom/deepseek/chat/mod/OverlayManager$13$1;->val$purgeTxt:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/deepseek/chat/mod/OverlayManager$13$1;->val$purgeBtn:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lcom/deepseek/chat/mod/OverlayManager$13$1;->val$container:Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/deepseek/chat/mod/OverlayManager$13$1;->this$0:Lcom/deepseek/chat/mod/OverlayManager$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 2103
    iget-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$13$1;->val$purgeTxt:Landroid/widget/TextView;

    const-string v1, "\u21bb L\u00e0m m\u1edbi"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2104
    iget-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$13$1;->val$purgeBtn:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 2105
    iget-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$13$1;->val$container:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2106
    iget-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$13$1;->val$container:Landroid/widget/FrameLayout;

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->renderNsfwBody(Landroid/widget/FrameLayout;)V
    invoke-static {v0}, Lcom/deepseek/chat/mod/OverlayManager;->access$2300(Landroid/widget/FrameLayout;)V

    .line 2107
    # getter for: Lcom/deepseek/chat/mod/OverlayManager;->appContext:Landroid/content/Context;
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$2700()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u2714 \u0110\u00e3 l\u00e0m m\u1edbi & c\u1eadp nh\u1eadt "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/deepseek/chat/mod/OverlayManager;->nsfwPrompts:Ljava/util/ArrayList;
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$1400()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Prompt m\u1edbi nh\u1ea5t!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2108
    return-void
.end method
