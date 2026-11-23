.class public final Lcom/join/mgps/adapter/j6$a;
.super Lm6/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/j6;->onBindViewHolder(Lv2/c;ILcom/join/mgps/dto/CollectionBeanSub;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/CollectionBeanSub;

.field final synthetic b:Lcom/join/mgps/adapter/j6;

.field final synthetic c:I


# direct methods
.method constructor <init>(Lcom/join/mgps/dto/CollectionBeanSub;Lcom/join/mgps/adapter/j6;ILandroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/j6$a;->a:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/j6$a;->b:Lcom/join/mgps/adapter/j6;

    .line 4
    .line 5
    iput p3, p0, Lcom/join/mgps/adapter/j6$a;->c:I

    .line 6
    .line 7
    invoke-direct {p0, p4, p1}, Lm6/c;-><init>(Landroid/content/Context;Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onButtonClicked(Lcom/join/mgps/customview/DownloadNormalView;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/j6$a;->b:Lcom/join/mgps/adapter/j6;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/adapter/j6;->l(Lcom/join/mgps/adapter/j6;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "home"

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v0, "ranking"

    .line 13
    .line 14
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v0, "-ranking-"

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget v0, p0, Lcom/join/mgps/adapter/j6$a;->c:I

    .line 28
    .line 29
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/join/mgps/adapter/j6$a;->a:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/DownloadPointBase;->setRecPosition(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/join/mgps/adapter/j6$a;->a:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 44
    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    iget v2, p0, Lcom/join/mgps/adapter/j6$a;->c:I

    .line 51
    .line 52
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v2, ""

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadPointBase;->setReMarks(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-super {p0, p1}, Lm6/c;->onButtonClicked(Lcom/join/mgps/customview/DownloadNormalView;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method
