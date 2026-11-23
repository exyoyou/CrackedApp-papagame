.class public Lcom/byazt/ukr/yp$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ee/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x439,
        0x684
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ukr/yp;->c(Lcom/byazt/ee/c;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ee/c;

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic uj:Lcom/byazt/ukr/yp;

.field public final synthetic ve:J


# direct methods
.method public constructor <init>(Lcom/byazt/ukr/yp;Lcom/byazt/ee/c;Ljava/lang/String;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ukr/yp$7;->uj:Lcom/byazt/ukr/yp;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ukr/yp$7;->c:Lcom/byazt/ee/c;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/ukr/yp$7;->tt:Ljava/lang/String;

    .line 6
    .line 7
    iput-wide p4, p0, Lcom/byazt/ukr/yp$7;->ve:J

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public c()Lcom/byazt/qal/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/ukr/yp$7;->c:Lcom/byazt/ee/c;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/ee/c;->c()Lcom/byazt/qal/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/byazt/qal/tt;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/byazt/ukr/yp$7;->tt:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/byazt/qal/tt;->c(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 12
    .line 13
    .line 14
    iget-wide v1, p0, Lcom/byazt/ukr/yp$7;->ve:J

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/byazt/qal/tt;->c(J)Lcom/byazt/qal/tt;

    .line 17
    .line 18
    .line 19
    return-object v0
.end method
