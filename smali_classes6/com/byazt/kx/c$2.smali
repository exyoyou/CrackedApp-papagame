.class public Lcom/byazt/kx/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/pz/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x599,
        0x46
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/kx/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ca/a;

.field public final synthetic tt:Lcom/byazt/pz/c;


# direct methods
.method public constructor <init>(Lcom/byazt/ca/a;Lcom/byazt/pz/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/byazt/kx/c$2;->c:Lcom/byazt/ca/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/kx/c$2;->tt:Lcom/byazt/pz/c;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;ILjava/util/Deque;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Deque<",
            "Lcom/byazt/dr/c;",
            ">;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/kx/c$2;->c:Lcom/byazt/ca/a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/kx/c$2;->tt:Lcom/byazt/pz/c;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/byazt/ca/a;->c(Ljava/lang/String;ILjava/util/Deque;Lcom/byazt/pz/c;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
