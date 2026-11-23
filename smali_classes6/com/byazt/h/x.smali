.class public Lcom/byazt/h/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/h/n;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x206,
        0x47
    }
.end annotation


# instance fields
.field public final c:Lcom/byazt/h/n;

.field public final tt:Lcom/byazt/h/n;


# direct methods
.method public constructor <init>(Lcom/byazt/h/n;Lcom/byazt/h/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/h/x;->c:Lcom/byazt/h/n;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/h/x;->tt:Lcom/byazt/h/n;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public tt(Lcom/byazt/h/c;)V
    .locals 1
    .param p1    # Lcom/byazt/h/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/h/x;->tt:Lcom/byazt/h/n;

    .line 2
    .line 3
    iput-object v0, p1, Lcom/byazt/h/c;->tt:Lcom/byazt/h/n;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/h/x;->c:Lcom/byazt/h/n;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/byazt/h/n;->tt(Lcom/byazt/h/c;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
