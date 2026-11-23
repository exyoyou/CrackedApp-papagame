.class public final Lcom/join/mgps/service/UpdateService_;
.super Lcom/join/mgps/service/UpdateService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/service/UpdateService_$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/service/UpdateService;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static p(Landroid/content/Context;)Lcom/join/mgps/service/UpdateService_$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/service/UpdateService_$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/service/UpdateService_$a;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
