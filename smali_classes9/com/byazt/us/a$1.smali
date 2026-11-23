.class public final Lcom/byazt/us/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/g/c$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xfb,
        0xff
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/us/a;->c(Lcom/byazt/dd/tt;Lcom/byazt/us/x;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/dd/tt;

.field public final synthetic tt:J

.field public final synthetic ve:Lcom/byazt/us/x;


# direct methods
.method public constructor <init>(Lcom/byazt/dd/tt;JLcom/byazt/us/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/us/a$1;->c:Lcom/byazt/dd/tt;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/byazt/us/a$1;->tt:J

    .line 4
    .line 5
    iput-object p4, p0, Lcom/byazt/us/a$1;->ve:Lcom/byazt/us/x;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public tt()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/g/c;->c()Lcom/byazt/g/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/byazt/g/c;->tt(Lcom/byazt/g/c$c;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/byazt/di/n;->c()Lcom/byazt/di/n;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lcom/byazt/us/a$1$1;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/byazt/us/a$1$1;-><init>(Lcom/byazt/us/a$1;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/byazt/di/n;->c(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public ve()V
    .locals 0

    return-void
.end method
