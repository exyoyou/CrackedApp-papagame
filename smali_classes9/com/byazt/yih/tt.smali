.class public Lcom/byazt/yih/tt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/aas/c$tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2da,
        0xd
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/yih/tt$c;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/x;->ve()Lcom/byazt/aas/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p0}, Lcom/byazt/aas/c;->c(Lcom/byazt/aas/c$tt;)V

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Lcom/byazt/yih/tt$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/yih/tt;-><init>()V

    return-void
.end method

.method public static c()Lcom/byazt/yih/tt;
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/yih/tt$c;->c()Lcom/byazt/yih/tt;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public onAppBackground()V
    .locals 0

    return-void
.end method

.method public onAppExit()V
    .locals 0

    return-void
.end method

.method public onAppForeground()V
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/yih/tt$1;

    .line 2
    .line 3
    const-string v1, "dl_work"

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lcom/byazt/yih/tt$1;-><init>(Lcom/byazt/yih/tt;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/byazt/bzd/x;->c(Lcom/byazt/bwm/sp;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onAppStart()V
    .locals 0

    return-void
.end method
