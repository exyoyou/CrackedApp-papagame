.class public Lcom/byazt/ysz/n$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x24d,
        0xdb
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ysz/n;->c(Ljava/lang/String;Lcom/byazt/ete/ic;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic tt:Lcom/byazt/ete/ic;

.field public final synthetic uj:Lcom/byazt/ysz/n;

.field public final synthetic ve:J


# direct methods
.method public constructor <init>(Lcom/byazt/ysz/n;Ljava/lang/String;Lcom/byazt/ete/ic;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ysz/n$1;->uj:Lcom/byazt/ysz/n;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ysz/n$1;->c:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/ysz/n$1;->tt:Lcom/byazt/ete/ic;

    .line 6
    .line 7
    iput-wide p4, p0, Lcom/byazt/ysz/n$1;->ve:J

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/ysz/n$1;->uj:Lcom/byazt/ysz/n;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/ysz/n$1;->c:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/byazt/ysz/n$1;->tt:Lcom/byazt/ete/ic;

    .line 6
    .line 7
    iget-wide v3, p0, Lcom/byazt/ysz/n$1;->ve:J

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3, v4}, Lcom/byazt/ysz/n;->c(Lcom/byazt/ysz/n;Ljava/lang/String;Lcom/byazt/ete/ic;J)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
