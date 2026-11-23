.class final Lcom/f$h;
.super Lcom/l$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "h"
.end annotation


# instance fields
.field private final a:Lcom/f$k;

.field private final b:Lcom/f$e;

.field private final c:Lcom/f$c;

.field private final d:Lcom/f$h;


# direct methods
.method constructor <init>(Lcom/f$k;Lcom/f$e;Lcom/f$c;Landroidx/fragment/app/Fragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "singletonCImpl",
            "activityRetainedCImpl",
            "activityCImpl",
            "fragmentParam"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/l$e;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Lcom/f$h;->d:Lcom/f$h;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/f$h;->a:Lcom/f$k;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/f$h;->b:Lcom/f$e;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/f$h;->c:Lcom/f$c;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a()Ldagger/hilt/android/internal/lifecycle/a$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/f$h;->c:Lcom/f$c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/f$c;->a()Ldagger/hilt/android/internal/lifecycle/a$d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public b()Lgb/g;
    .locals 7

    .line 1
    new-instance v6, Lcom/f$p;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/f$h;->a:Lcom/f$k;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/f$h;->b:Lcom/f$e;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/f$h;->c:Lcom/f$c;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/f$h;->d:Lcom/f$h;

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    move-object v0, v6

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/f$p;-><init>(Lcom/f$k;Lcom/f$e;Lcom/f$c;Lcom/f$h;Lcom/f$a;)V

    .line 14
    .line 15
    .line 16
    return-object v6
.end method

.method public injectHMSettingsCommonFragment(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsCommonFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hMSettingsCommonFragment"
        }
    .end annotation

    return-void
.end method

.method public injectHMSettingsPeripheralFragment(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsPeripheralFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hMSettingsPeripheralFragment"
        }
    .end annotation

    return-void
.end method
