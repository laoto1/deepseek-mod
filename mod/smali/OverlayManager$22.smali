.class Lcom/deepseek/chat/mod/OverlayManager$22;
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


# direct methods
.method constructor <init>()V
    .registers 1

    .line 3041
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 3042
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->showSessionList()V
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$3700()V

    return-void
.end method
