.class Lcom/deepseek/chat/mod/OverlayManager$15;
.super Ljava/lang/Object;
.source "OverlayManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepseek/chat/mod/OverlayManager;->showSessionList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$updateBtn:Landroid/widget/LinearLayout;

.field final synthetic val$updateTv:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Landroid/widget/LinearLayout;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2159
    iput-object p1, p0, Lcom/deepseek/chat/mod/OverlayManager$15;->val$updateTv:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/deepseek/chat/mod/OverlayManager$15;->val$updateBtn:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 2161
    # getter for: Lcom/deepseek/chat/mod/OverlayManager;->availableUpdate:Lcom/deepseek/chat/mod/OverlayManager$UpdateInfo;
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$2200()Lcom/deepseek/chat/mod/OverlayManager$UpdateInfo;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 2162
    # getter for: Lcom/deepseek/chat/mod/OverlayManager;->availableUpdate:Lcom/deepseek/chat/mod/OverlayManager$UpdateInfo;
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$2200()Lcom/deepseek/chat/mod/OverlayManager$UpdateInfo;

    move-result-object p1

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->showUpdateDialog(Lcom/deepseek/chat/mod/OverlayManager$UpdateInfo;)V
    invoke-static {p1}, Lcom/deepseek/chat/mod/OverlayManager;->access$2300(Lcom/deepseek/chat/mod/OverlayManager$UpdateInfo;)V

    goto :goto_22

    .line 2164
    :cond_e
    iget-object p1, p0, Lcom/deepseek/chat/mod/OverlayManager$15;->val$updateTv:Landroid/widget/TextView;

    const-string v0, "\u23f3 \u0110ang ki\u1ec3m tra..."

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2165
    new-instance p1, Lcom/deepseek/chat/mod/OverlayManager$15$1;

    iget-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$15;->val$updateTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/deepseek/chat/mod/OverlayManager$15;->val$updateBtn:Landroid/widget/LinearLayout;

    invoke-direct {p1, p0, v0, v1}, Lcom/deepseek/chat/mod/OverlayManager$15$1;-><init>(Lcom/deepseek/chat/mod/OverlayManager$15;Landroid/widget/TextView;Landroid/widget/LinearLayout;)V

    const/4 v0, 0x0

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->checkForUpdates(ZLjava/lang/Runnable;)V
    invoke-static {v0, p1}, Lcom/deepseek/chat/mod/OverlayManager;->access$500(ZLjava/lang/Runnable;)V

    .line 2179
    :goto_22
    return-void
.end method
