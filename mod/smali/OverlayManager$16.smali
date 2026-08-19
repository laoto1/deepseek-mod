.class Lcom/deepseek/chat/mod/OverlayManager$16;
.super Ljava/lang/Object;
.source "OverlayManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepseek/chat/mod/OverlayManager;->buildRichSessionCard(IZ)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$index:I


# direct methods
.method constructor <init>(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2533
    iput p1, p0, Lcom/deepseek/chat/mod/OverlayManager$16;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 2535
    iget p1, p0, Lcom/deepseek/chat/mod/OverlayManager$16;->val$index:I

    # setter for: Lcom/deepseek/chat/mod/OverlayManager;->selectedSession:I
    invoke-static {p1}, Lcom/deepseek/chat/mod/OverlayManager;->access$3002(I)I

    .line 2536
    iget p1, p0, Lcom/deepseek/chat/mod/OverlayManager$16;->val$index:I

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->showSessionDetail(I)V
    invoke-static {p1}, Lcom/deepseek/chat/mod/OverlayManager;->access$3100(I)V

    .line 2537
    return-void
.end method
