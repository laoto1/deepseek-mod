.class Lcom/deepseek/chat/mod/OverlayManager$5;
.super Ljava/lang/Object;
.source "OverlayManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepseek/chat/mod/OverlayManager;->showUpdateDialog(Lcom/deepseek/chat/mod/OverlayManager$UpdateInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$decor:Landroid/view/ViewGroup;

.field final synthetic val$overlayBg:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroid/widget/FrameLayout;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 902
    iput-object p1, p0, Lcom/deepseek/chat/mod/OverlayManager$5;->val$decor:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/deepseek/chat/mod/OverlayManager$5;->val$overlayBg:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 904
    iget-object p1, p0, Lcom/deepseek/chat/mod/OverlayManager$5;->val$decor:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$5;->val$overlayBg:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 905
    return-void
.end method
