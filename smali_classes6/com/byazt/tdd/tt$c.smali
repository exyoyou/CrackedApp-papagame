.class public Lcom/byazt/tdd/tt$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x61a,
        0xc2
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/tdd/tt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final c:J

.field public final tt:Lcom/byazt/of/tt;


# direct methods
.method public constructor <init>(JLcom/byazt/of/tt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/byazt/tdd/tt$c;->c:J

    .line 5
    .line 6
    iput-object p3, p0, Lcom/byazt/tdd/tt$c;->tt:Lcom/byazt/of/tt;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/tdd/tt$c;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public tt()Lcom/byazt/of/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/tdd/tt$c;->tt:Lcom/byazt/of/tt;

    .line 2
    .line 3
    return-object v0
.end method
