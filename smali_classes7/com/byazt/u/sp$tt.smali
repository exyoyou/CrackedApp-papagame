.class public Lcom/byazt/u/sp$tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x43,
        0x388
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/u/sp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "tt"
.end annotation


# instance fields
.field public c:Ljava/lang/Runnable;

.field public tt:J

.field public final synthetic ve:Lcom/byazt/u/sp;


# direct methods
.method public constructor <init>(Lcom/byazt/u/sp;Ljava/lang/Runnable;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/u/sp$tt;->ve:Lcom/byazt/u/sp;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/u/sp$tt;->c:Ljava/lang/Runnable;

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/byazt/u/sp$tt;->tt:J

    .line 9
    .line 10
    return-void
.end method
