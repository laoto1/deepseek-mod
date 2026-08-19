.class Lcom/deepseek/chat/mod/OverlayManager$19;
.super Ljava/lang/Object;
.source "OverlayManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepseek/chat/mod/OverlayManager;->buildPromptCard(Lcom/deepseek/chat/mod/OverlayManager$NsfwPrompt;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$prompt:Lcom/deepseek/chat/mod/OverlayManager$NsfwPrompt;


# direct methods
.method constructor <init>(Lcom/deepseek/chat/mod/OverlayManager$NsfwPrompt;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2794
    iput-object p1, p0, Lcom/deepseek/chat/mod/OverlayManager$19;->val$prompt:Lcom/deepseek/chat/mod/OverlayManager$NsfwPrompt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 2796
    # getter for: Lcom/deepseek/chat/mod/OverlayManager;->appContext:Landroid/content/Context;
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$2400()Landroid/content/Context;

    move-result-object p1

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    .line 2797
    iget-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$19;->val$prompt:Lcom/deepseek/chat/mod/OverlayManager$NsfwPrompt;

    iget-object v0, v0, Lcom/deepseek/chat/mod/OverlayManager$NsfwPrompt;->content:Ljava/lang/String;

    const-string v1, "nsfw_prompt"

    invoke-static {v1, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 2799
    # getter for: Lcom/deepseek/chat/mod/OverlayManager;->appContext:Landroid/content/Context;
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$2400()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u2714 \u0110\u00e3 sao ch\u00e9p Prompt! \ud83d\udc49 H\u00e3y d\u00e1n v\u00e0o khung chat \u0111\u1ec3 b\u1eaft \u0111\u1ea7u."

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 2800
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->closePanel()V
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$3000()V

    .line 2801
    return-void
.end method
