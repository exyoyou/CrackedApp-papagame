.class public Lcom/byazt/qw/ve$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2d6,
        0x186
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/qw/ve;->onAppForeground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/qw/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/qw/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/qw/ve$5;->c:Lcom/byazt/qw/ve;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/qw/ve$5;->c:Lcom/byazt/qw/ve;

    .line 2
    .line 3
    invoke-static {}, Lcom/byazt/aas/DeviceUtils;->x()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    int-to-float v1, v1

    .line 8
    invoke-static {v0, v1}, Lcom/byazt/qw/ve;->c(Lcom/byazt/qw/ve;F)F

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/byazt/qw/c;->sp()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    sget v2, Lcom/byazt/qw/c;->tt:I

    .line 16
    .line 17
    const-wide/16 v3, 0x0

    .line 18
    .line 19
    invoke-static {v2, v3, v4, v0, v1}, Lcom/byazt/qw/c;->c(IJJ)V

    .line 20
    .line 21
    .line 22
    sget v0, Lcom/byazt/qw/c;->a:I

    .line 23
    .line 24
    invoke-static {v0}, Lcom/byazt/qw/c;->c(I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/byazt/qw/ve$5;->c:Lcom/byazt/qw/ve;

    .line 28
    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 30
    .line 31
    .line 32
    move-result-wide v1

    .line 33
    invoke-static {v0, v1, v2}, Lcom/byazt/qw/ve;->tt(Lcom/byazt/qw/ve;J)J

    .line 34
    .line 35
    .line 36
    return-void
.end method
