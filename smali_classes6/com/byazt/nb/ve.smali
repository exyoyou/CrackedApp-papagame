.class public Lcom/byazt/nb/ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x28b,
        0x36
    }
.end annotation


# instance fields
.field public final c:Ljava/lang/String;

.field public n:Landroid/graphics/Typeface;

.field public final tt:Ljava/lang/String;

.field public final uj:F

.field public final ve:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/nb/ve;->c:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/nb/ve;->tt:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/byazt/nb/ve;->ve:Ljava/lang/String;

    .line 9
    .line 10
    iput p4, p0, Lcom/byazt/nb/ve;->uj:F

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nb/ve;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Landroid/graphics/Typeface;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/nb/ve;->n:Landroid/graphics/Typeface;

    return-void
.end method

.method public tt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nb/ve;->tt:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public uj()Landroid/graphics/Typeface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nb/ve;->n:Landroid/graphics/Typeface;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nb/ve;->ve:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
