.class Lcom/deepseek/chat/mod/OverlayManager$9;
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

    .line 1944
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1945
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->closePanel()V
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$3000()V

    return-void
.end method
