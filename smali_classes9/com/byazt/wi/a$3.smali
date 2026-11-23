.class public Lcom/byazt/wi/a$3;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3d7,
        0x188
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/wi/a;->c(Landroid/content/ContentValues;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:J

.field public final synthetic tt:Lcom/byazt/wi/a;


# direct methods
.method public constructor <init>(Lcom/byazt/wi/a;Ljava/lang/String;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wi/a$3;->tt:Lcom/byazt/wi/a;

    .line 2
    .line 3
    iput-wide p3, p0, Lcom/byazt/wi/a$3;->c:J

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/byazt/bwm/sp;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/byazt/wi/a;->tt()Lcom/byazt/wi/a$c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-wide v1, p0, Lcom/byazt/wi/a$3;->c:J

    .line 6
    .line 7
    invoke-interface {v0, v1, v2}, Lcom/byazt/wi/a$c;->c(J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
