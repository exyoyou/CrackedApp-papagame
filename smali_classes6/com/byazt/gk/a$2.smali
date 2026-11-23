.class public Lcom/byazt/gk/a$2;
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
        0xfe
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/gk/a;->c(Lcom/byazt/nc/sl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/nc/sl;

.field public final synthetic tt:Lcom/byazt/gk/a;


# direct methods
.method public constructor <init>(Lcom/byazt/gk/a;Lcom/byazt/nc/sl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/gk/a$2;->tt:Lcom/byazt/gk/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/gk/a$2;->c:Lcom/byazt/nc/sl;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/gk/a$2;->tt:Lcom/byazt/gk/a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/gk/a$2;->c:Lcom/byazt/nc/sl;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/gk/a;->c(Lcom/byazt/gk/a;Lcom/byazt/nc/sl;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
