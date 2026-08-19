.class Lcom/deepseek/chat/mod/OverlayManager$1$1;
.super Ljava/lang/Object;
.source "OverlayManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepseek/chat/mod/OverlayManager$1;->onActivityResumed(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/deepseek/chat/mod/OverlayManager$1;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/deepseek/chat/mod/OverlayManager$1;Landroid/app/Activity;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 228
    iput-object p2, p0, Lcom/deepseek/chat/mod/OverlayManager$1$1;->val$activity:Landroid/app/Activity;

    iput-object p1, p0, Lcom/deepseek/chat/mod/OverlayManager$1$1;->this$0:Lcom/deepseek/chat/mod/OverlayManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 229
    iget-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$1$1;->val$activity:Landroid/app/Activity;

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->attachBubble(Landroid/app/Activity;)V
    invoke-static {v0}, Lcom/deepseek/chat/mod/OverlayManager;->access$200(Landroid/app/Activity;)V

    return-void
.end method
