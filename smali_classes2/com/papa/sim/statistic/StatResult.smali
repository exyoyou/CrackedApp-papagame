.class public Lcom/papa/sim/statistic/StatResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/StatResult;->status:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/StatResult;->status:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
