.class public Lcom/byazt/ga/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x100,
        0x2a
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/ga/i$tt;,
        Lcom/byazt/ga/i$c;,
        Lcom/byazt/ga/i$ve;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final c:I

.field public final da:Ljava/lang/String;

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/ga/i$ve;",
            ">;"
        }
    .end annotation
.end field

.field public m:Landroid/graphics/Bitmap;

.field public final n:Ljava/lang/String;

.field public final sl:[[I

.field public final sp:Ljava/lang/String;

.field public final t:Lorg/json/JSONArray;

.field public final tt:I

.field public final u:Lcom/byazt/ga/i$c;

.field public final uj:Ljava/lang/String;

.field public final ve:Ljava/lang/String;

.field public final x:Ljava/lang/String;

.field public final yp:Lcom/byazt/ga/i$tt;

.field public final z:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;[[ILorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ga/i$c;Lcom/byazt/ga/i$tt;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/byazt/ga/i$ve;",
            ">;",
            "Ljava/lang/String;",
            "[[I",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/byazt/ga/i$c;",
            "Lcom/byazt/ga/i$tt;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/byazt/ga/i;->c:I

    .line 3
    iput p2, p0, Lcom/byazt/ga/i;->tt:I

    .line 4
    iput-object p3, p0, Lcom/byazt/ga/i;->ve:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/byazt/ga/i;->uj:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/byazt/ga/i;->n:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/byazt/ga/i;->a:Ljava/lang/String;

    .line 8
    iput-object p11, p0, Lcom/byazt/ga/i;->sp:Ljava/lang/String;

    .line 9
    iput-object p12, p0, Lcom/byazt/ga/i;->x:Ljava/lang/String;

    .line 10
    iput-object p7, p0, Lcom/byazt/ga/i;->i:Ljava/util/List;

    .line 11
    iput-object p8, p0, Lcom/byazt/ga/i;->da:Ljava/lang/String;

    .line 12
    iput-object p9, p0, Lcom/byazt/ga/i;->sl:[[I

    .line 13
    iput-object p10, p0, Lcom/byazt/ga/i;->t:Lorg/json/JSONArray;

    .line 14
    iput-object p13, p0, Lcom/byazt/ga/i;->u:Lcom/byazt/ga/i$c;

    .line 15
    iput-object p14, p0, Lcom/byazt/ga/i;->yp:Lcom/byazt/ga/i$tt;

    .line 16
    iput-object p15, p0, Lcom/byazt/ga/i;->z:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/i;->x:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ga/i;->c:I

    return v0
.end method

.method public c(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/ga/i;->m:Landroid/graphics/Bitmap;

    return-void
.end method

.method public da()Lcom/byazt/ga/i$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/i;->u:Lcom/byazt/ga/i$c;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Lorg/json/JSONArray;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/i;->t:Lorg/json/JSONArray;

    .line 2
    .line 3
    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/i;->z:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/i;->sp:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public sl()Lcom/byazt/ga/i$tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/i;->yp:Lcom/byazt/ga/i$tt;

    .line 2
    .line 3
    return-object v0
.end method

.method public sp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/i;->da:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/i;->ve:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ga/i;->tt:I

    .line 2
    .line 3
    return v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/i;->uj:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public uj()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/i;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/ga/i$ve;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/i;->i:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public x()[[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/i;->sl:[[I

    .line 2
    .line 3
    return-object v0
.end method

.method public yp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/i;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public z()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/i;->m:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-object v0
.end method
