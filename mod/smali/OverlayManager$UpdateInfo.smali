.class Lcom/deepseek/chat/mod/OverlayManager$UpdateInfo;
.super Ljava/lang/Object;
.source "OverlayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepseek/chat/mod/OverlayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpdateInfo"
.end annotation


# instance fields
.field apkDownloadUrl:Ljava/lang/String;

.field apkSize:J

.field publishedAt:Ljava/lang/String;

.field releaseNotes:Ljava/lang/String;

.field releaseTitle:Ljava/lang/String;

.field tagName:Ljava/lang/String;

.field versionName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .registers 9

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-object p1, p0, Lcom/deepseek/chat/mod/OverlayManager$UpdateInfo;->tagName:Ljava/lang/String;

    .line 224
    iput-object p2, p0, Lcom/deepseek/chat/mod/OverlayManager$UpdateInfo;->versionName:Ljava/lang/String;

    .line 225
    iput-object p3, p0, Lcom/deepseek/chat/mod/OverlayManager$UpdateInfo;->releaseTitle:Ljava/lang/String;

    .line 226
    iput-object p4, p0, Lcom/deepseek/chat/mod/OverlayManager$UpdateInfo;->releaseNotes:Ljava/lang/String;

    .line 227
    iput-object p5, p0, Lcom/deepseek/chat/mod/OverlayManager$UpdateInfo;->apkDownloadUrl:Ljava/lang/String;

    .line 228
    iput-wide p6, p0, Lcom/deepseek/chat/mod/OverlayManager$UpdateInfo;->apkSize:J

    .line 229
    iput-object p8, p0, Lcom/deepseek/chat/mod/OverlayManager$UpdateInfo;->publishedAt:Ljava/lang/String;

    .line 230
    return-void
.end method
