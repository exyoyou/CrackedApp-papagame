.class public final Lcom/byazt/pct/my;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x7c,
        0x91
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/pct/my$c;
    }
.end annotation


# instance fields
.field public c:Ljava/lang/String;

.field public tt:Lcom/byazt/pct/gu;

.field public uj:Z

.field public ve:Lcom/byazt/pct/my$c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/byazt/pct/gu;Lcom/byazt/pct/my$c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/byazt/pct/my;->uj:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/byazt/pct/my;->c:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/byazt/pct/my;->tt:Lcom/byazt/pct/gu;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/byazt/pct/my;->ve:Lcom/byazt/pct/my$c;

    .line 12
    .line 13
    return-void
.end method
