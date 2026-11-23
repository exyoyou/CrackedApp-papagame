.class public final Lcom/byazt/ng/a$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xf8,
        0x58c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;ILjava/lang/String;JLjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic a:J

.field public final synthetic c:Lcom/byazt/ng/uj;

.field public final synthetic n:Ljava/lang/String;

.field public final synthetic sp:Ljava/lang/String;

.field public final synthetic tt:Lcom/byazt/yl/ve;

.field public final synthetic uj:I

.field public final synthetic ve:Lcom/byazt/ll/tt;

.field public final synthetic x:Z


# direct methods
.method public constructor <init>(Lcom/byazt/ng/uj;Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;ILjava/lang/String;JLjava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ng/a$12;->c:Lcom/byazt/ng/uj;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ng/a$12;->tt:Lcom/byazt/yl/ve;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/ng/a$12;->ve:Lcom/byazt/ll/tt;

    .line 6
    .line 7
    iput p4, p0, Lcom/byazt/ng/a$12;->uj:I

    .line 8
    .line 9
    iput-object p5, p0, Lcom/byazt/ng/a$12;->n:Ljava/lang/String;

    .line 10
    .line 11
    iput-wide p6, p0, Lcom/byazt/ng/a$12;->a:J

    .line 12
    .line 13
    iput-object p8, p0, Lcom/byazt/ng/a$12;->sp:Ljava/lang/String;

    .line 14
    .line 15
    iput-boolean p9, p0, Lcom/byazt/ng/a$12;->x:Z

    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    invoke-static {}, Lcom/byazt/tw/c;->c()Lcom/byazt/tw/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/byazt/ng/a$12;->c:Lcom/byazt/ng/uj;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/byazt/ng/a$12;->tt:Lcom/byazt/yl/ve;

    .line 8
    .line 9
    iget-object v3, p0, Lcom/byazt/ng/a$12;->ve:Lcom/byazt/ll/tt;

    .line 10
    .line 11
    iget v4, p0, Lcom/byazt/ng/a$12;->uj:I

    .line 12
    .line 13
    iget-object v5, p0, Lcom/byazt/ng/a$12;->n:Ljava/lang/String;

    .line 14
    .line 15
    iget-wide v6, p0, Lcom/byazt/ng/a$12;->a:J

    .line 16
    .line 17
    iget-object v8, p0, Lcom/byazt/ng/a$12;->sp:Ljava/lang/String;

    .line 18
    .line 19
    iget-boolean v9, p0, Lcom/byazt/ng/a$12;->x:Z

    .line 20
    .line 21
    invoke-virtual/range {v0 .. v9}, Lcom/byazt/tw/c;->c(Lcom/byazt/ng/uj;Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;ILjava/lang/String;JLjava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
