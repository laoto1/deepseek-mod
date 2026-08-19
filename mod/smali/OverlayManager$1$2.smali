.class Lcom/deepseek/chat/mod/OverlayManager$1$2;
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


# direct methods
.method constructor <init>(Lcom/deepseek/chat/mod/OverlayManager$1;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 262
    iput-object p1, p0, Lcom/deepseek/chat/mod/OverlayManager$1$2;->this$0:Lcom/deepseek/chat/mod/OverlayManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 263
    const/4 v0, 0x1

    const/4 v1, 0x0

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->checkForUpdates(ZLjava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/deepseek/chat/mod/OverlayManager;->access$500(ZLjava/lang/Runnable;)V

    return-void
.end method
