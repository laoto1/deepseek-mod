.class Lcom/deepseek/chat/mod/OverlayManager$17;
.super Ljava/lang/Object;
.source "OverlayManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepseek/chat/mod/OverlayManager;->renderChatAiBody(Landroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$allBtn:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2503
    iput-object p1, p0, Lcom/deepseek/chat/mod/OverlayManager$17;->val$allBtn:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 2505
    # getter for: Lcom/deepseek/chat/mod/OverlayManager;->showAllSessions:Z
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$3600()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    # setter for: Lcom/deepseek/chat/mod/OverlayManager;->showAllSessions:Z
    invoke-static {p1}, Lcom/deepseek/chat/mod/OverlayManager;->access$3602(Z)Z

    .line 2506
    iget-object p1, p0, Lcom/deepseek/chat/mod/OverlayManager$17;->val$allBtn:Landroid/widget/TextView;

    # getter for: Lcom/deepseek/chat/mod/OverlayManager;->showAllSessions:Z
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$3600()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "\u2261  Thu g\u1ecdn l\u1ecbch s\u1eed  \u2039"

    goto :goto_16

    :cond_14
    const-string v0, "\u2261  Xem t\u1ea5t c\u1ea3 l\u1ecbch s\u1eed  \u203a"

    :goto_16
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2507
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->showSessionList()V
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$3700()V

    .line 2508
    # getter for: Lcom/deepseek/chat/mod/OverlayManager;->appContext:Landroid/content/Context;
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$2400()Landroid/content/Context;

    move-result-object p1

    # getter for: Lcom/deepseek/chat/mod/OverlayManager;->showAllSessions:Z
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$3600()Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "\u0110ang hi\u1ec7n t\u1ea5t c\u1ea3 phi\u00ean"

    goto :goto_2b

    :cond_29
    const-string v0, "\u0110ang hi\u1ec7n g\u1ea7n \u0111\u00e2y"

    :goto_2b
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 2509
    return-void
.end method
