.class public Lcom/byazt/omf/gr$19;
.super Lcom/byazt/mh/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f,
        0x97e
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/omf/gr;->tt(Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;ILcom/byazt/omf/gu$tt;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic c:Lcom/byazt/ete/tt;

.field public final synthetic n:I

.field public final synthetic sp:Lcom/byazt/omf/gr;

.field public final synthetic tt:Lcom/byazt/omf/gu$tt;

.field public final synthetic uj:Lcom/byazt/ete/bm;

.field public final synthetic ve:Lcom/byazt/dj/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/omf/gr;Lcom/byazt/ete/tt;Lcom/byazt/omf/gu$tt;Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/omf/gr$19;->sp:Lcom/byazt/omf/gr;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/omf/gr$19;->c:Lcom/byazt/ete/tt;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/omf/gr$19;->tt:Lcom/byazt/omf/gu$tt;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/omf/gr$19;->ve:Lcom/byazt/dj/tt;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/byazt/omf/gr$19;->uj:Lcom/byazt/ete/bm;

    .line 10
    .line 11
    iput p6, p0, Lcom/byazt/omf/gr$19;->n:I

    .line 12
    .line 13
    iput p7, p0, Lcom/byazt/omf/gr$19;->a:I

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/byazt/mh/c;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/va/uj;Lcom/byazt/hm/tt;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/byazt/omf/gr$19;->sp:Lcom/byazt/omf/gr;

    iget-object v3, p0, Lcom/byazt/omf/gr$19;->c:Lcom/byazt/ete/tt;

    iget-object v4, p0, Lcom/byazt/omf/gr$19;->tt:Lcom/byazt/omf/gu$tt;

    iget-object v5, p0, Lcom/byazt/omf/gr$19;->ve:Lcom/byazt/dj/tt;

    iget-object v6, p0, Lcom/byazt/omf/gr$19;->uj:Lcom/byazt/ete/bm;

    iget v7, p0, Lcom/byazt/omf/gr$19;->n:I

    iget v8, p0, Lcom/byazt/omf/gr$19;->a:I

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v8}, Lcom/byazt/omf/gr;->c(Lcom/byazt/omf/gr;Lcom/byazt/va/uj;Lcom/byazt/hm/tt;Lcom/byazt/ete/tt;Lcom/byazt/omf/gu$tt;Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;II)V

    return-void
.end method

.method public c(Lcom/byazt/va/uj;Ljava/io/IOException;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/byazt/omf/gr$19;->sp:Lcom/byazt/omf/gr;

    iget-object v1, p0, Lcom/byazt/omf/gr$19;->c:Lcom/byazt/ete/tt;

    iget-object v2, p0, Lcom/byazt/omf/gr$19;->tt:Lcom/byazt/omf/gu$tt;

    invoke-static {v0, p1, p2, v1, v2}, Lcom/byazt/omf/gr;->c(Lcom/byazt/omf/gr;Lcom/byazt/va/uj;Ljava/io/IOException;Lcom/byazt/ete/tt;Lcom/byazt/omf/gu$tt;)V

    return-void
.end method
