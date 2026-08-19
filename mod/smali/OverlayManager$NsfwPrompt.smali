.class Lcom/deepseek/chat/mod/OverlayManager$NsfwPrompt;
.super Ljava/lang/Object;
.source "OverlayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepseek/chat/mod/OverlayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NsfwPrompt"
.end annotation


# instance fields
.field author:Ljava/lang/String;

.field category:Ljava/lang/String;

.field content:Ljava/lang/String;

.field description:Ljava/lang/String;

.field id:Ljava/lang/String;

.field title:Ljava/lang/String;

.field updatedAt:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16

    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/deepseek/chat/mod/OverlayManager$NsfwPrompt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 210
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 9

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-object p1, p0, Lcom/deepseek/chat/mod/OverlayManager$NsfwPrompt;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/deepseek/chat/mod/OverlayManager$NsfwPrompt;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/deepseek/chat/mod/OverlayManager$NsfwPrompt;->category:Ljava/lang/String;

    .line 204
    iput-object p4, p0, Lcom/deepseek/chat/mod/OverlayManager$NsfwPrompt;->description:Ljava/lang/String;

    iput-object p5, p0, Lcom/deepseek/chat/mod/OverlayManager$NsfwPrompt;->content:Ljava/lang/String;

    iput-object p6, p0, Lcom/deepseek/chat/mod/OverlayManager$NsfwPrompt;->author:Ljava/lang/String;

    .line 205
    iput-wide p7, p0, Lcom/deepseek/chat/mod/OverlayManager$NsfwPrompt;->updatedAt:J

    .line 206
    return-void
.end method
