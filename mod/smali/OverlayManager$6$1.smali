.class Lcom/deepseek/chat/mod/OverlayManager$6$1;
.super Ljava/lang/Object;
.source "OverlayManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepseek/chat/mod/OverlayManager$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/deepseek/chat/mod/OverlayManager$6;

.field final synthetic val$decor:Landroid/view/ViewGroup;

.field final synthetic val$overlayBg:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Lcom/deepseek/chat/mod/OverlayManager$6;Landroid/view/ViewGroup;Landroid/widget/FrameLayout;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 924
    iput-object p2, p0, Lcom/deepseek/chat/mod/OverlayManager$6$1;->val$decor:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/deepseek/chat/mod/OverlayManager$6$1;->val$overlayBg:Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/deepseek/chat/mod/OverlayManager$6$1;->this$0:Lcom/deepseek/chat/mod/OverlayManager$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 926
    iget-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$6$1;->val$decor:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/deepseek/chat/mod/OverlayManager$6$1;->val$overlayBg:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 927
    return-void
.end method
