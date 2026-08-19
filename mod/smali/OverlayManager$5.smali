.class Lcom/deepseek/chat/mod/OverlayManager$5;
.super Ljava/lang/Object;
.source "OverlayManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepseek/chat/mod/OverlayManager;->openPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1527
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->closePanel()V
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$1900()V

    return-void
.end method
