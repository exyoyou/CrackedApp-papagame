.class public Lcom/byazt/gk/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x94,
        0xff
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/gk/a;->c(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic ve:Lcom/byazt/gk/a;


# direct methods
.method public constructor <init>(Lcom/byazt/gk/a;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/gk/a$1;->ve:Lcom/byazt/gk/a;

    .line 2
    .line 3
    iput p2, p0, Lcom/byazt/gk/a$1;->c:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/gk/a$1;->tt:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/gk/a$1;->ve:Lcom/byazt/gk/a;

    .line 2
    .line 3
    iget v1, p0, Lcom/byazt/gk/a$1;->c:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/byazt/gk/a$1;->tt:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/byazt/gk/a;->c(Lcom/byazt/gk/a;ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
