.class public final Lcom/pairip/licensecheck/TrialClient;
.super Ljava/lang/Object;
.source "TrialClient.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static stopTrial(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 21
    invoke-static {p0}, Lcom/pairip/licensecheck/LicenseClient;->stopTrial(Landroid/content/Context;)V

    return-void
.end method
