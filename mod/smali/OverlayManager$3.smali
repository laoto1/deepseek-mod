.class Lcom/deepseek/chat/mod/OverlayManager$3;
.super Ljava/lang/Object;
.source "OverlayManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepseek/chat/mod/OverlayManager;->sortPromptsByDate(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/deepseek/chat/mod/OverlayManager$NsfwPrompt;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/deepseek/chat/mod/OverlayManager$NsfwPrompt;Lcom/deepseek/chat/mod/OverlayManager$NsfwPrompt;)I
    .registers 6

    .line 490
    iget-wide v0, p2, Lcom/deepseek/chat/mod/OverlayManager$NsfwPrompt;->updatedAt:J

    iget-wide p1, p1, Lcom/deepseek/chat/mod/OverlayManager$NsfwPrompt;->updatedAt:J

    cmp-long v2, v0, p1

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 488
    check-cast p1, Lcom/deepseek/chat/mod/OverlayManager$NsfwPrompt;

    check-cast p2, Lcom/deepseek/chat/mod/OverlayManager$NsfwPrompt;

    invoke-virtual {p0, p1, p2}, Lcom/deepseek/chat/mod/OverlayManager$3;->compare(Lcom/deepseek/chat/mod/OverlayManager$NsfwPrompt;Lcom/deepseek/chat/mod/OverlayManager$NsfwPrompt;)I

    move-result p1

    return p1
.end method
