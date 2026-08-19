.class public final synthetic Lcom/pairip/licensecheck/LicenseClient$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/pairip/licensecheck/LicenseClient;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/pairip/licensecheck/LicenseCheckException;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/pairip/licensecheck/LicenseClient;ZLcom/pairip/licensecheck/LicenseCheckException;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pairip/licensecheck/LicenseClient$$ExternalSyntheticLambda1;->f$0:Lcom/pairip/licensecheck/LicenseClient;

    iput-boolean p2, p0, Lcom/pairip/licensecheck/LicenseClient$$ExternalSyntheticLambda1;->f$1:Z

    iput-object p3, p0, Lcom/pairip/licensecheck/LicenseClient$$ExternalSyntheticLambda1;->f$2:Lcom/pairip/licensecheck/LicenseCheckException;

    iput-boolean p4, p0, Lcom/pairip/licensecheck/LicenseClient$$ExternalSyntheticLambda1;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/pairip/licensecheck/LicenseClient$$ExternalSyntheticLambda1;->f$0:Lcom/pairip/licensecheck/LicenseClient;

    iget-boolean v1, p0, Lcom/pairip/licensecheck/LicenseClient$$ExternalSyntheticLambda1;->f$1:Z

    iget-object v2, p0, Lcom/pairip/licensecheck/LicenseClient$$ExternalSyntheticLambda1;->f$2:Lcom/pairip/licensecheck/LicenseCheckException;

    iget-boolean v3, p0, Lcom/pairip/licensecheck/LicenseClient$$ExternalSyntheticLambda1;->f$3:Z

    invoke-static {v0, v1, v2, v3}, Lcom/pairip/licensecheck/LicenseClient;->$r8$lambda$tB8S6FJPE8_x6-ohvmHs84x5lek(Lcom/pairip/licensecheck/LicenseClient;ZLcom/pairip/licensecheck/LicenseCheckException;Z)V

    return-void
.end method
