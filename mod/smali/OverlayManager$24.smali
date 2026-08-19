.class Lcom/deepseek/chat/mod/OverlayManager$24;
.super Ljava/lang/Object;
.source "OverlayManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepseek/chat/mod/OverlayManager;->showSessionDetail(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$session:Lcom/deepseek/chat/mod/OverlayManager$SessionData;


# direct methods
.method constructor <init>(Lcom/deepseek/chat/mod/OverlayManager$SessionData;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3084
    iput-object p1, p0, Lcom/deepseek/chat/mod/OverlayManager$24;->val$session:Lcom/deepseek/chat/mod/OverlayManager$SessionData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 3085
    iget-object p1, p0, Lcom/deepseek/chat/mod/OverlayManager$24;->val$session:Lcom/deepseek/chat/mod/OverlayManager$SessionData;

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->deleteSession(Lcom/deepseek/chat/mod/OverlayManager$SessionData;)V
    invoke-static {p1}, Lcom/deepseek/chat/mod/OverlayManager;->access$4200(Lcom/deepseek/chat/mod/OverlayManager$SessionData;)V

    return-void
.end method
