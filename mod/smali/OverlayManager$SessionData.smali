.class Lcom/deepseek/chat/mod/OverlayManager$SessionData;
.super Ljava/lang/Object;
.source "OverlayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepseek/chat/mod/OverlayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SessionData"
.end annotation


# instance fields
.field firstTs:J

.field id:Ljava/lang/String;

.field lastTs:J

.field messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field msgCount:I

.field preview:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput-object p1, p0, Lcom/deepseek/chat/mod/OverlayManager$SessionData;->id:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lcom/deepseek/chat/mod/OverlayManager$SessionData;->title:Ljava/lang/String;

    iput-object p1, p0, Lcom/deepseek/chat/mod/OverlayManager$SessionData;->preview:Ljava/lang/String;

    .line 193
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/deepseek/chat/mod/OverlayManager$SessionData;->firstTs:J

    iput-wide v0, p0, Lcom/deepseek/chat/mod/OverlayManager$SessionData;->lastTs:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/deepseek/chat/mod/OverlayManager$SessionData;->msgCount:I

    .line 194
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/deepseek/chat/mod/OverlayManager$SessionData;->messages:Ljava/util/ArrayList;

    .line 195
    return-void
.end method
