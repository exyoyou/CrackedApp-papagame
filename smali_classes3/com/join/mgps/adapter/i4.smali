.class public Lcom/join/mgps/adapter/i4;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/i4$e;,
        Lcom/join/mgps/adapter/i4$f;,
        Lcom/join/mgps/adapter/i4$g;,
        Lcom/join/mgps/adapter/i4$h;,
        Lcom/join/mgps/adapter/i4$j;,
        Lcom/join/mgps/adapter/i4$i;,
        Lcom/join/mgps/adapter/i4$k;,
        Lcom/join/mgps/adapter/i4$d;
    }
.end annotation


# static fields
.field public static final l:I = 0x0

.field public static final m:I = 0x1

.field public static final n:I = 0x2

.field public static final o:I = 0x3

.field public static final p:I = 0x4

.field public static final q:I = 0x5

.field public static final r:I = 0x6

.field public static final s:I = 0x7

.field public static final t:I = 0x8

.field public static final u:I = 0x9

.field public static final v:I = 0xa

.field public static final w:I = 0xb

.field public static final x:I = 0xc

.field public static final y:I = 0xd


# instance fields
.field b:Landroid/content/Context;

.field c:Ljava/lang/String;

.field d:Z

.field e:Z

.field f:I

.field private g:I

.field h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/i4$f;",
            ">;"
        }
    .end annotation
.end field

.field i:Lcom/join/mgps/adapter/i4$e;

.field private j:Lcom/join/mgps/dto/CommonGameInfoBean;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/adapter/i4;->c:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/adapter/i4;->d:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/join/mgps/adapter/i4;->e:Z

    .line 12
    .line 13
    const/4 v1, -0x1

    .line 14
    iput v1, p0, Lcom/join/mgps/adapter/i4;->f:I

    .line 15
    .line 16
    iput v0, p0, Lcom/join/mgps/adapter/i4;->g:I

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/adapter/i4;->h:Ljava/util/List;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 26
    .line 27
    return-void
.end method

.method private A(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "convertView",
            "parent"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    check-cast p3, Lcom/join/mgps/base/b;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    const v0, 0x7f0d045d

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    const/4 p3, -0x1

    .line 25
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 26
    .line 27
    .line 28
    new-instance p3, Lcom/join/mgps/base/b;

    .line 29
    .line 30
    invoke-direct {p3, p2}, Lcom/join/mgps/base/b;-><init>(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/i4;->getItem(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {p0, p3, p1}, Lcom/join/mgps/adapter/i4;->t(Lcom/join/mgps/base/b;Ljava/util/ArrayList;)V

    .line 43
    .line 44
    .line 45
    return-object p2
.end method

.method private B(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "convertView",
            "parent"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    check-cast p3, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    const v0, 0x7f0d02b9

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    const p3, 0x7f0a0396

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    check-cast p3, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 32
    .line 33
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/i4;->getItem(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 41
    .line 42
    if-nez p1, :cond_1

    .line 43
    .line 44
    return-object p2

    .line 45
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getOnlineGAmeAdPic()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_2

    .line 54
    .line 55
    invoke-static {p3, v0}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    new-instance p3, Lcom/join/mgps/adapter/r3;

    .line 59
    .line 60
    invoke-direct {p3, p0, p1}, Lcom/join/mgps/adapter/r3;-><init>(Lcom/join/mgps/adapter/i4;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    .line 65
    .line 66
    return-object p2
.end method

.method private C(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "convertView",
            "parent"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    check-cast p3, Lcom/join/mgps/base/b;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    const v0, 0x7f0d03cd

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    const/4 p3, -0x1

    .line 25
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 26
    .line 27
    .line 28
    new-instance p3, Lcom/join/mgps/base/b;

    .line 29
    .line 30
    invoke-direct {p3, p2}, Lcom/join/mgps/base/b;-><init>(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/i4;->getItem(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Lcom/join/mgps/dto/CollectionSevenListBean;

    .line 41
    .line 42
    invoke-direct {p0, p3, p1}, Lcom/join/mgps/adapter/i4;->f0(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CollectionSevenListBean;)V

    .line 43
    .line 44
    .line 45
    return-object p2
.end method

.method private D(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "convertView",
            "parent"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Lcom/join/mgps/adapter/i4$g;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Lcom/join/mgps/adapter/i4$g;

    .line 11
    .line 12
    invoke-direct {p1, p0}, Lcom/join/mgps/adapter/i4$g;-><init>(Lcom/join/mgps/adapter/i4;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const v1, 0x7f0d02ba

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    move-object p1, p2

    .line 33
    :goto_0
    return-object p1
.end method

.method private E(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "convertView",
            "parent"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    check-cast p3, Lcom/join/mgps/base/b;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    const v0, 0x7f0d0468

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    const/4 p3, -0x1

    .line 25
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 26
    .line 27
    .line 28
    new-instance p3, Lcom/join/mgps/base/b;

    .line 29
    .line 30
    invoke-direct {p3, p2}, Lcom/join/mgps/base/b;-><init>(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/i4;->getItem(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p1, ""

    .line 49
    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const v0, 0x7f0a1a3a

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3, v0, p1}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 61
    .line 62
    .line 63
    return-object p2
.end method

.method private F(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "convertView",
            "parent"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Lcom/join/mgps/base/b;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const v0, 0x7f0d0401

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/4 p2, -0x1

    .line 25
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 26
    .line 27
    .line 28
    new-instance p2, Lcom/join/mgps/base/b;

    .line 29
    .line 30
    invoke-direct {p2, p1}, Lcom/join/mgps/base/b;-><init>(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-object p1
.end method

.method private G(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "convertView",
            "parent"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Lcom/join/mgps/base/b;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const v0, 0x7f0d045e

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/4 p2, -0x1

    .line 25
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 26
    .line 27
    .line 28
    new-instance p2, Lcom/join/mgps/base/b;

    .line 29
    .line 30
    invoke-direct {p2, p1}, Lcom/join/mgps/base/b;-><init>(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-object p1
.end method

.method private H(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "convertView",
            "parent"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    check-cast p3, Lcom/join/mgps/adapter/i4$g;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p2, Lcom/join/mgps/adapter/i4$g;

    .line 11
    .line 12
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/i4$g;-><init>(Lcom/join/mgps/adapter/i4;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const v1, 0x7f0d02bb

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    const v0, 0x7f0a0441

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/widget/TextView;

    .line 37
    .line 38
    iput-object v0, p2, Lcom/join/mgps/adapter/i4$g;->a:Landroid/widget/TextView;

    .line 39
    .line 40
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    move-object v3, p3

    .line 44
    move-object p3, p2

    .line 45
    move-object p2, v3

    .line 46
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/i4;->getItem(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Ljava/lang/Integer;

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    iget-object p3, p3, Lcom/join/mgps/adapter/i4$g;->a:Landroid/widget/TextView;

    .line 57
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v1, "\u5171"

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string p1, "\u6b3e\u6e38\u620f"

    .line 72
    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    .line 82
    .line 83
    return-object p2
.end method

.method private I(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "convertView",
            "parent"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p3

    .line 8
    check-cast p3, Lcom/join/mgps/adapter/i4$h;

    .line 9
    .line 10
    goto/16 :goto_0

    .line 11
    .line 12
    :cond_0
    new-instance p2, Lcom/join/mgps/adapter/i4$h;

    .line 13
    .line 14
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/i4$h;-><init>(Lcom/join/mgps/adapter/i4;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const v2, 0x7f0d02bc

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    const v1, 0x7f0a084f

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 38
    .line 39
    iput-object v1, p2, Lcom/join/mgps/adapter/i4$h;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 40
    .line 41
    const v1, 0x7f0a1151

    .line 42
    .line 43
    .line 44
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iput-object v1, p2, Lcom/join/mgps/adapter/i4$h;->k:Landroid/view/View;

    .line 49
    .line 50
    const v1, 0x7f0a048c

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Landroid/widget/TextView;

    .line 58
    .line 59
    iput-object v1, p2, Lcom/join/mgps/adapter/i4$h;->b:Landroid/widget/TextView;

    .line 60
    .line 61
    const v1, 0x7f0a15e3

    .line 62
    .line 63
    .line 64
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Landroid/widget/TextView;

    .line 69
    .line 70
    iput-object v1, p2, Lcom/join/mgps/adapter/i4$h;->c:Landroid/widget/TextView;

    .line 71
    .line 72
    const v1, 0x7f0a00a7

    .line 73
    .line 74
    .line 75
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Landroid/widget/TextView;

    .line 80
    .line 81
    iput-object v1, p2, Lcom/join/mgps/adapter/i4$h;->d:Landroid/widget/TextView;

    .line 82
    .line 83
    const v1, 0x7f0a054d

    .line 84
    .line 85
    .line 86
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    check-cast v1, Lcom/join/mgps/customview/DownloadNormalView;

    .line 91
    .line 92
    iput-object v1, p2, Lcom/join/mgps/adapter/i4$h;->h:Lcom/join/mgps/customview/DownloadNormalView;

    .line 93
    .line 94
    const v1, 0x7f0a10d8

    .line 95
    .line 96
    .line 97
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    check-cast v1, Landroid/widget/TextView;

    .line 102
    .line 103
    iput-object v1, p2, Lcom/join/mgps/adapter/i4$h;->e:Landroid/widget/TextView;

    .line 104
    .line 105
    const v1, 0x7f0a0441

    .line 106
    .line 107
    .line 108
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    check-cast v1, Landroid/widget/TextView;

    .line 113
    .line 114
    iput-object v1, p2, Lcom/join/mgps/adapter/i4$h;->f:Landroid/widget/TextView;

    .line 115
    .line 116
    const v1, 0x7f0a1087

    .line 117
    .line 118
    .line 119
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    iput-object v1, p2, Lcom/join/mgps/adapter/i4$h;->i:Landroid/view/View;

    .line 124
    .line 125
    const v1, 0x7f0a0671

    .line 126
    .line 127
    .line 128
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    iput-object v1, p2, Lcom/join/mgps/adapter/i4$h;->j:Landroid/view/View;

    .line 133
    .line 134
    const v1, 0x7f0a191f

    .line 135
    .line 136
    .line 137
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    check-cast v1, Landroid/widget/TextView;

    .line 142
    .line 143
    iput-object v1, p2, Lcom/join/mgps/adapter/i4$h;->g:Landroid/widget/TextView;

    .line 144
    .line 145
    iput-object p3, p2, Lcom/join/mgps/adapter/i4$h;->l:Landroid/view/View;

    .line 146
    .line 147
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    move-object v6, p3

    .line 151
    move-object p3, p2

    .line 152
    move-object p2, v6

    .line 153
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/i4;->getItem(I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 158
    .line 159
    if-nez v1, :cond_1

    .line 160
    .line 161
    return-object p2

    .line 162
    :cond_1
    iget-object v2, p3, Lcom/join/mgps/adapter/i4$h;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 163
    .line 164
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    if-eqz v3, :cond_2

    .line 169
    .line 170
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    if-nez v3, :cond_3

    .line 187
    .line 188
    :cond_2
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    invoke-static {v2, v3}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    :cond_3
    iget-object v2, p3, Lcom/join/mgps/adapter/i4$h;->e:Landroid/widget/TextView;

    .line 203
    .line 204
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    const/4 v3, 0x5

    .line 216
    const/16 v4, 0x8

    .line 217
    .line 218
    if-ne v2, v3, :cond_5

    .line 219
    .line 220
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isOpen()Z

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    if-nez v2, :cond_4

    .line 225
    .line 226
    iget-object v2, p3, Lcom/join/mgps/adapter/i4$h;->k:Landroid/view/View;

    .line 227
    .line 228
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 229
    .line 230
    .line 231
    goto :goto_1

    .line 232
    :cond_4
    iget-object v2, p3, Lcom/join/mgps/adapter/i4$h;->k:Landroid/view/View;

    .line 233
    .line 234
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 235
    .line 236
    .line 237
    goto :goto_1

    .line 238
    :cond_5
    iget-object v2, p3, Lcom/join/mgps/adapter/i4$h;->k:Landroid/view/View;

    .line 239
    .line 240
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 241
    .line 242
    .line 243
    :goto_1
    iget-boolean v2, p0, Lcom/join/mgps/adapter/i4;->d:Z

    .line 244
    .line 245
    if-eqz v2, :cond_7

    .line 246
    .line 247
    iget-object v2, p0, Lcom/join/mgps/adapter/i4;->c:Ljava/lang/String;

    .line 248
    .line 249
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    if-nez v2, :cond_6

    .line 254
    .line 255
    iget-object v2, p0, Lcom/join/mgps/adapter/i4;->c:Ljava/lang/String;

    .line 256
    .line 257
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v2

    .line 265
    if-eqz v2, :cond_6

    .line 266
    .line 267
    iput p1, p0, Lcom/join/mgps/adapter/i4;->f:I

    .line 268
    .line 269
    iget-object v2, p3, Lcom/join/mgps/adapter/i4$h;->j:Landroid/view/View;

    .line 270
    .line 271
    invoke-virtual {p0, v2}, Lcom/join/mgps/adapter/i4;->t0(Landroid/view/View;)V

    .line 272
    .line 273
    .line 274
    iput-boolean v0, p0, Lcom/join/mgps/adapter/i4;->d:Z

    .line 275
    .line 276
    goto :goto_2

    .line 277
    :cond_6
    iget-object v2, p3, Lcom/join/mgps/adapter/i4$h;->j:Landroid/view/View;

    .line 278
    .line 279
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 280
    .line 281
    .line 282
    iget-object v2, p3, Lcom/join/mgps/adapter/i4$h;->j:Landroid/view/View;

    .line 283
    .line 284
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 285
    .line 286
    .line 287
    goto :goto_2

    .line 288
    :cond_7
    iget v2, p0, Lcom/join/mgps/adapter/i4;->f:I

    .line 289
    .line 290
    if-ne v2, p1, :cond_8

    .line 291
    .line 292
    goto :goto_2

    .line 293
    :cond_8
    iget-object v2, p3, Lcom/join/mgps/adapter/i4$h;->j:Landroid/view/View;

    .line 294
    .line 295
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 296
    .line 297
    .line 298
    iget-object v2, p3, Lcom/join/mgps/adapter/i4$h;->j:Landroid/view/View;

    .line 299
    .line 300
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 301
    .line 302
    .line 303
    :goto_2
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCloudArchiveTime()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 308
    .line 309
    .line 310
    move-result v2

    .line 311
    if-eqz v2, :cond_9

    .line 312
    .line 313
    iget-object v2, p3, Lcom/join/mgps/adapter/i4$h;->g:Landroid/widget/TextView;

    .line 314
    .line 315
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 316
    .line 317
    .line 318
    iget-object v2, p3, Lcom/join/mgps/adapter/i4$h;->g:Landroid/widget/TextView;

    .line 319
    .line 320
    new-instance v3, Ljava/lang/StringBuilder;

    .line 321
    .line 322
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    .line 324
    .line 325
    const-string v5, "\u4e0a\u6b21\u5b58\u6863\uff1a"

    .line 326
    .line 327
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCloudArchiveTime()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v5

    .line 334
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v3

    .line 341
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    .line 343
    .line 344
    goto :goto_3

    .line 345
    :cond_9
    iget-object v2, p3, Lcom/join/mgps/adapter/i4$h;->g:Landroid/widget/TextView;

    .line 346
    .line 347
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 348
    .line 349
    .line 350
    :goto_3
    invoke-virtual {p0, p3, v1, p1}, Lcom/join/mgps/adapter/i4;->m0(Lcom/join/mgps/adapter/i4$h;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 351
    .line 352
    .line 353
    iget-object v2, p0, Lcom/join/mgps/adapter/i4;->h:Ljava/util/List;

    .line 354
    .line 355
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 356
    .line 357
    .line 358
    move-result v2

    .line 359
    if-ge p1, v2, :cond_a

    .line 360
    .line 361
    iget-object v2, p0, Lcom/join/mgps/adapter/i4;->h:Ljava/util/List;

    .line 362
    .line 363
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object p1

    .line 367
    check-cast p1, Lcom/join/mgps/adapter/i4$f;

    .line 368
    .line 369
    iget-boolean p1, p1, Lcom/join/mgps/adapter/i4$f;->c:Z

    .line 370
    .line 371
    if-eqz p1, :cond_a

    .line 372
    .line 373
    iget-object p1, p3, Lcom/join/mgps/adapter/i4$h;->c:Landroid/widget/TextView;

    .line 374
    .line 375
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 376
    .line 377
    .line 378
    iget-object p1, p3, Lcom/join/mgps/adapter/i4$h;->f:Landroid/widget/TextView;

    .line 379
    .line 380
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 381
    .line 382
    .line 383
    goto :goto_5

    .line 384
    :cond_a
    invoke-virtual {p0, v1}, Lcom/join/mgps/adapter/i4;->v(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 385
    .line 386
    .line 387
    move-result p1

    .line 388
    if-eqz p1, :cond_c

    .line 389
    .line 390
    iget-object p1, p3, Lcom/join/mgps/adapter/i4$h;->c:Landroid/widget/TextView;

    .line 391
    .line 392
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 393
    .line 394
    .line 395
    iget-object p1, p0, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 396
    .line 397
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v2

    .line 401
    invoke-static {p1, v2}, Lcom/join/mgps/Util/UtilsMy;->t1(Landroid/content/Context;Ljava/lang/String;)I

    .line 402
    .line 403
    .line 404
    move-result p1

    .line 405
    if-lez p1, :cond_b

    .line 406
    .line 407
    iget-object v2, p3, Lcom/join/mgps/adapter/i4$h;->f:Landroid/widget/TextView;

    .line 408
    .line 409
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 410
    .line 411
    .line 412
    iget-object v0, p3, Lcom/join/mgps/adapter/i4$h;->f:Landroid/widget/TextView;

    .line 413
    .line 414
    new-instance v2, Ljava/lang/StringBuilder;

    .line 415
    .line 416
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    const-string p1, ""

    .line 423
    .line 424
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object p1

    .line 431
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    .line 433
    .line 434
    goto :goto_4

    .line 435
    :cond_b
    iget-object p1, p3, Lcom/join/mgps/adapter/i4$h;->f:Landroid/widget/TextView;

    .line 436
    .line 437
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 438
    .line 439
    .line 440
    :goto_4
    iget-object p1, p3, Lcom/join/mgps/adapter/i4$h;->c:Landroid/widget/TextView;

    .line 441
    .line 442
    new-instance p3, Lcom/join/mgps/adapter/i4$a;

    .line 443
    .line 444
    invoke-direct {p3, p0, v1}, Lcom/join/mgps/adapter/i4$a;-><init>(Lcom/join/mgps/adapter/i4;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    .line 449
    .line 450
    goto :goto_5

    .line 451
    :cond_c
    iget-object p1, p3, Lcom/join/mgps/adapter/i4$h;->c:Landroid/widget/TextView;

    .line 452
    .line 453
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 454
    .line 455
    .line 456
    iget-object p1, p3, Lcom/join/mgps/adapter/i4$h;->f:Landroid/widget/TextView;

    .line 457
    .line 458
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 459
    .line 460
    .line 461
    :goto_5
    return-object p2
.end method

.method private J(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "convertView",
            "parent"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p3

    .line 8
    check-cast p3, Lcom/join/mgps/adapter/i4$i;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance p2, Lcom/join/mgps/adapter/i4$i;

    .line 12
    .line 13
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/i4$i;-><init>(Lcom/join/mgps/adapter/i4;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const v2, 0x7f0d02be

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    const v1, 0x7f0a0850

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 37
    .line 38
    iput-object v1, p2, Lcom/join/mgps/adapter/i4$i;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 39
    .line 40
    const v1, 0x7f0a0851

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 48
    .line 49
    iput-object v1, p2, Lcom/join/mgps/adapter/i4$i;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 50
    .line 51
    const v1, 0x7f0a0852

    .line 52
    .line 53
    .line 54
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 59
    .line 60
    iput-object v1, p2, Lcom/join/mgps/adapter/i4$i;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 61
    .line 62
    const v1, 0x7f0a0441

    .line 63
    .line 64
    .line 65
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Landroid/widget/TextView;

    .line 70
    .line 71
    iput-object v1, p2, Lcom/join/mgps/adapter/i4$i;->d:Landroid/widget/TextView;

    .line 72
    .line 73
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    move-object v7, p3

    .line 77
    move-object p3, p2

    .line 78
    move-object p2, v7

    .line 79
    :goto_0
    new-instance v1, Lcom/join/mgps/adapter/e4;

    .line 80
    .line 81
    invoke-direct {v1, p0}, Lcom/join/mgps/adapter/e4;-><init>(Lcom/join/mgps/adapter/i4;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/i4;->getItem(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    if-nez v1, :cond_1

    .line 92
    .line 93
    return-object p2

    .line 94
    :cond_1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/i4;->getItem(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Lcom/join/mgps/activity/mygame/data/DataGameListBean;

    .line 99
    .line 100
    new-instance v1, Lcom/join/mgps/adapter/f4;

    .line 101
    .line 102
    invoke-direct {v1, p0, p3}, Lcom/join/mgps/adapter/f4;-><init>(Lcom/join/mgps/adapter/i4;Lcom/join/mgps/adapter/i4$i;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/join/mgps/activity/mygame/data/DataGameListBean;->getGameList()Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    const/4 v2, 0x3

    .line 113
    new-array v3, v2, [Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 114
    .line 115
    iget-object v4, p3, Lcom/join/mgps/adapter/i4$i;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 116
    .line 117
    aput-object v4, v3, v0

    .line 118
    .line 119
    iget-object v4, p3, Lcom/join/mgps/adapter/i4$i;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 120
    .line 121
    const/4 v5, 0x1

    .line 122
    aput-object v4, v3, v5

    .line 123
    .line 124
    const/4 v4, 0x2

    .line 125
    iget-object v5, p3, Lcom/join/mgps/adapter/i4$i;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 126
    .line 127
    aput-object v5, v3, v4

    .line 128
    .line 129
    const/4 v4, 0x0

    .line 130
    :goto_1
    const/16 v5, 0x8

    .line 131
    .line 132
    if-ge v4, v2, :cond_3

    .line 133
    .line 134
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    if-lt v4, v6, :cond_2

    .line 139
    .line 140
    aget-object v6, v3, v4

    .line 141
    .line 142
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_2
    aget-object v5, v3, v4

    .line 147
    .line 148
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 149
    .line 150
    .line 151
    aget-object v5, v3, v4

    .line 152
    .line 153
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    check-cast v6, Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean;

    .line 158
    .line 159
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    invoke-static {v5, v6}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_3
    if-eqz v1, :cond_4

    .line 170
    .line 171
    invoke-virtual {p1}, Lcom/join/mgps/activity/mygame/data/DataGameListBean;->getGameCount()I

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    goto :goto_3

    .line 176
    :cond_4
    const/4 p1, 0x0

    .line 177
    :goto_3
    if-le p1, v2, :cond_5

    .line 178
    .line 179
    iget-boolean p1, p0, Lcom/join/mgps/adapter/i4;->e:Z

    .line 180
    .line 181
    if-eqz p1, :cond_5

    .line 182
    .line 183
    iget-object p1, p3, Lcom/join/mgps/adapter/i4$i;->d:Landroid/widget/TextView;

    .line 184
    .line 185
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 186
    .line 187
    .line 188
    goto :goto_4

    .line 189
    :cond_5
    iget-object p1, p3, Lcom/join/mgps/adapter/i4$i;->d:Landroid/widget/TextView;

    .line 190
    .line 191
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 192
    .line 193
    .line 194
    :goto_4
    return-object p2
.end method

.method private K(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "convertView",
            "parent"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p3

    .line 8
    check-cast p3, Lcom/join/mgps/adapter/i4$j;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance p2, Lcom/join/mgps/adapter/i4$j;

    .line 12
    .line 13
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/i4$j;-><init>(Lcom/join/mgps/adapter/i4;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const v2, 0x7f0d02bf

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    const v1, 0x7f0a084f

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 37
    .line 38
    iput-object v1, p2, Lcom/join/mgps/adapter/i4$j;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 39
    .line 40
    const v1, 0x7f0a129e

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Landroid/widget/ProgressBar;

    .line 48
    .line 49
    iput-object v1, p2, Lcom/join/mgps/adapter/i4$j;->b:Landroid/widget/ProgressBar;

    .line 50
    .line 51
    const v1, 0x7f0a048c

    .line 52
    .line 53
    .line 54
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Landroid/widget/TextView;

    .line 59
    .line 60
    iput-object v1, p2, Lcom/join/mgps/adapter/i4$j;->c:Landroid/widget/TextView;

    .line 61
    .line 62
    const v1, 0x7f0a15e3

    .line 63
    .line 64
    .line 65
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Landroid/widget/TextView;

    .line 70
    .line 71
    iput-object v1, p2, Lcom/join/mgps/adapter/i4$j;->d:Landroid/widget/TextView;

    .line 72
    .line 73
    const v1, 0x7f0a095e

    .line 74
    .line 75
    .line 76
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Landroid/widget/TextView;

    .line 81
    .line 82
    iput-object v1, p2, Lcom/join/mgps/adapter/i4$j;->f:Landroid/widget/TextView;

    .line 83
    .line 84
    const v1, 0x7f0a10d8

    .line 85
    .line 86
    .line 87
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    check-cast v1, Landroid/widget/TextView;

    .line 92
    .line 93
    iput-object v1, p2, Lcom/join/mgps/adapter/i4$j;->g:Landroid/widget/TextView;

    .line 94
    .line 95
    const v1, 0x7f0a1087

    .line 96
    .line 97
    .line 98
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    iput-object v1, p2, Lcom/join/mgps/adapter/i4$j;->j:Landroid/view/View;

    .line 103
    .line 104
    iput-object p3, p2, Lcom/join/mgps/adapter/i4$j;->m:Landroid/view/View;

    .line 105
    .line 106
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    move-object v4, p3

    .line 110
    move-object p3, p2

    .line 111
    move-object p2, v4

    .line 112
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/i4;->getItem(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 117
    .line 118
    if-nez v1, :cond_1

    .line 119
    .line 120
    return-object p2

    .line 121
    :cond_1
    iget-object v2, p3, Lcom/join/mgps/adapter/i4$j;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 122
    .line 123
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-static {v2, v3}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object v2, p3, Lcom/join/mgps/adapter/i4$j;->g:Landroid/widget/TextView;

    .line 131
    .line 132
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    const/16 v3, 0x8

    .line 144
    .line 145
    if-ne v2, v3, :cond_2

    .line 146
    .line 147
    iget-object v0, p3, Lcom/join/mgps/adapter/i4$j;->b:Landroid/widget/ProgressBar;

    .line 148
    .line 149
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 150
    .line 151
    .line 152
    move-result-wide v2

    .line 153
    long-to-int v3, v2

    .line 154
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 155
    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_2
    iget-object v2, p3, Lcom/join/mgps/adapter/i4$j;->b:Landroid/widget/ProgressBar;

    .line 159
    .line 160
    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 161
    .line 162
    .line 163
    :goto_1
    invoke-virtual {p0, p3, v1, p1}, Lcom/join/mgps/adapter/i4;->u(Lcom/join/mgps/adapter/i4$j;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 164
    .line 165
    .line 166
    return-object p2
.end method

.method private L(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "convertView",
            "parent"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    check-cast p3, Lcom/join/mgps/adapter/i4$k;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p2, Lcom/join/mgps/adapter/i4$k;

    .line 11
    .line 12
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/i4$k;-><init>(Lcom/join/mgps/adapter/i4;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const v1, 0x7f0d02c1

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    const v0, 0x7f0a0441

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/widget/TextView;

    .line 37
    .line 38
    iput-object v0, p2, Lcom/join/mgps/adapter/i4$k;->a:Landroid/widget/TextView;

    .line 39
    .line 40
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    move-object v3, p3

    .line 44
    move-object p3, p2

    .line 45
    move-object p2, v3

    .line 46
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/i4;->getItem(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Ljava/lang/Integer;

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    iget-object p3, p3, Lcom/join/mgps/adapter/i4$k;->a:Landroid/widget/TextView;

    .line 57
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string p1, "\u6b3e\u6e38\u620f\u9700\u66f4\u65b0"

    .line 67
    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    .line 78
    new-instance p1, Lcom/join/mgps/adapter/z3;

    .line 79
    .line 80
    invoke-direct {p1}, Lcom/join/mgps/adapter/z3;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    .line 85
    .line 86
    return-object p2
.end method

.method private synthetic O(Ljava/util/ArrayList;I)V
    .locals 2

    .line 1
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/mgps/dto/CloudGameBanner;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudGameBanner;->getVip_url()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lcom/join/mgps/dto/CloudGameBanner;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudGameBanner;->getVip_url()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method private synthetic P(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/i4;->i:Lcom/join/mgps/adapter/i4$e;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {p2, v0, p1}, Lcom/join/mgps/adapter/i4$e;->onClick(Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    if-eqz p2, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    sget-object v0, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    if-eqz p2, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    iget-object v0, p0, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 41
    .line 42
    invoke-virtual {p2, v0, p1}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivityBYDownloadTAsk(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    return-void
.end method

.method private synthetic Q(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/i4;->i:Lcom/join/mgps/adapter/i4$e;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {p2, v0, p1}, Lcom/join/mgps/adapter/i4$e;->onMore(Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private static synthetic R(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic S(ZLcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/app/Dialog;Landroid/view/View;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object p1, p0, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object p4, p0, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1, p4, v0}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object p4, p0, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p1, p4, p2}, Lcom/join/android/app/common/utils/APKUtils;->o0(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/i4;->w(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p2}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/join/mgps/adapter/i4;->notifyDataSetChanged()V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/i4;->w(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 48
    .line 49
    .line 50
    invoke-static {p2}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/join/mgps/adapter/i4;->notifyDataSetChanged()V

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-virtual {p3}, Landroid/app/Dialog;->dismiss()V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method private synthetic T(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/view/View;)Z
    .locals 7

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/i4;->i:Lcom/join/mgps/adapter/i4$e;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p2, p1}, Lcom/join/mgps/adapter/i4$e;->onLongClick(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    new-instance p2, Lcom/join/mgps/customview/t;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 17
    .line 18
    const v2, 0x7f1301b0

    .line 19
    .line 20
    .line 21
    invoke-direct {p2, v1, v2}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    .line 22
    .line 23
    .line 24
    const v1, 0x7f0d0186

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 28
    .line 29
    .line 30
    const v1, 0x7f0a04b8

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Landroid/widget/Button;

    .line 38
    .line 39
    const v2, 0x7f0a1762

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Landroid/widget/TextView;

    .line 47
    .line 48
    const v3, 0x7f0a04bb

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Landroid/widget/TextView;

    .line 56
    .line 57
    const-string v4, "\u5220\u9664\u6e38\u620f"

    .line 58
    .line 59
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    const-string v4, "\u5220\u9664"

    .line 67
    .line 68
    if-eqz v2, :cond_2

    .line 69
    .line 70
    sget-object v5, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    .line 71
    .line 72
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_2

    .line 81
    .line 82
    iget-object v2, p0, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 83
    .line 84
    invoke-static {v2}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    iget-object v5, p0, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    invoke-virtual {v2, v5, v6}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_1

    .line 99
    .line 100
    const-string v2, "\u4f60\u786e\u5b9a\u8981\u5378\u8f7d\u8be5\u6e38\u620f\uff1f"

    .line 101
    .line 102
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    .line 104
    .line 105
    const-string v2, "\u5378\u8f7d"

    .line 106
    .line 107
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_1
    const-string v2, "\u4f60\u786e\u5b9a\u8981\u5220\u9664\u8be5\u6e38\u620f\uff1f"

    .line 112
    .line 113
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    .line 118
    .line 119
    :goto_0
    const/4 v2, 0x1

    .line 120
    goto :goto_1

    .line 121
    :cond_2
    const-string v2, "\u4f60\u786e\u5b9a\u8981\u5220\u9664\u8be5\u6e38\u620f\u53ca\u6587\u4ef6\uff1f"

    .line 122
    .line 123
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    .line 128
    .line 129
    const/4 v2, 0x0

    .line 130
    :goto_1
    const v3, 0x7f0a04b2

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    check-cast v3, Landroid/widget/Button;

    .line 138
    .line 139
    new-instance v4, Lcom/join/mgps/adapter/t3;

    .line 140
    .line 141
    invoke-direct {v4, p2}, Lcom/join/mgps/adapter/t3;-><init>(Landroid/app/Dialog;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    .line 146
    .line 147
    new-instance v3, Lcom/join/mgps/adapter/u3;

    .line 148
    .line 149
    invoke-direct {v3, p0, v2, p1, p2}, Lcom/join/mgps/adapter/u3;-><init>(Lcom/join/mgps/adapter/i4;ZLcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/app/Dialog;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    .line 156
    .line 157
    .line 158
    return v0
.end method

.method private synthetic U(Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p2, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {p2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    sget-object v0, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p2, v0, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void
.end method

.method private synthetic V(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity_$IntentBuilder_;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 13
    .line 14
    instance-of v0, p1, Lcom/join/mgps/activity/MGMainActivity;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    sget-object v0, Lcom/papa/sim/statistic/Event;->onclickTabGuessuLike:Lcom/papa/sim/statistic/Event;

    .line 23
    .line 24
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 25
    .line 26
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 33
    .line 34
    instance-of v0, p1, Lcom/join/mgps/activity/MyGameManagerActivity;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    sget-object v0, Lcom/papa/sim/statistic/Event;->onclickCentreGuessuLike:Lcom/papa/sim/statistic/Event;

    .line 43
    .line 44
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 45
    .line 46
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void
.end method

.method private synthetic W(Lcom/join/mgps/adapter/i4$i;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-static {p2}, Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity_$IntentBuilder_;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p2}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 10
    .line 11
    .line 12
    iget-object p2, p0, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 13
    .line 14
    instance-of v0, p2, Lcom/join/mgps/activity/MGMainActivity;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-static {p2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    sget-object v0, Lcom/papa/sim/statistic/Event;->onclickTabGuessuLike:Lcom/papa/sim/statistic/Event;

    .line 23
    .line 24
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 25
    .line 26
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 33
    .line 34
    instance-of v0, p2, Lcom/join/mgps/activity/MyGameManagerActivity;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-static {p2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    sget-object v0, Lcom/papa/sim/statistic/Event;->onclickCentreGuessuLike:Lcom/papa/sim/statistic/Event;

    .line 43
    .line 44
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 45
    .line 46
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    const/4 p2, 0x0

    .line 53
    iput-boolean p2, p0, Lcom/join/mgps/adapter/i4;->e:Z

    .line 54
    .line 55
    iget-object p1, p1, Lcom/join/mgps/adapter/i4$i;->d:Landroid/widget/TextView;

    .line 56
    .line 57
    const/16 p2, 0x8

    .line 58
    .line 59
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method private static synthetic X(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/join/mgps/activity/MyGameUpdateManagerActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/MyGameUpdateManagerActivity_$k;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private synthetic Y(Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p2, v0, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private synthetic Z(ZLcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/app/Dialog;Landroid/view/View;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object p1, p0, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object p4, p0, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1, p4, v0}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object p4, p0, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p1, p4, p2}, Lcom/join/android/app/common/utils/APKUtils;->o0(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/i4;->w(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p2}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/join/mgps/adapter/i4;->notifyDataSetChanged()V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/i4;->w(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 48
    .line 49
    .line 50
    invoke-static {p2}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/join/mgps/adapter/i4;->notifyDataSetChanged()V

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-virtual {p3}, Landroid/app/Dialog;->dismiss()V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/adapter/i4;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/i4;->b0(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/view/View;)V

    return-void
.end method

.method private synthetic a0(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/view/View;)Z
    .locals 7

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/i4;->i:Lcom/join/mgps/adapter/i4$e;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p2, p1}, Lcom/join/mgps/adapter/i4$e;->onLongClick(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    new-instance p2, Lcom/join/mgps/customview/t;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 17
    .line 18
    const v2, 0x7f1301b0

    .line 19
    .line 20
    .line 21
    invoke-direct {p2, v1, v2}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    .line 22
    .line 23
    .line 24
    const v1, 0x7f0d0186

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 28
    .line 29
    .line 30
    const v1, 0x7f0a04b8

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Landroid/widget/Button;

    .line 38
    .line 39
    const v2, 0x7f0a1762

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Landroid/widget/TextView;

    .line 47
    .line 48
    const v3, 0x7f0a04bb

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Landroid/widget/TextView;

    .line 56
    .line 57
    const-string v4, "\u5220\u9664\u6e38\u620f"

    .line 58
    .line 59
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    const-string v4, "\u5220\u9664"

    .line 67
    .line 68
    if-eqz v2, :cond_2

    .line 69
    .line 70
    sget-object v5, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    .line 71
    .line 72
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_2

    .line 81
    .line 82
    iget-object v2, p0, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 83
    .line 84
    invoke-static {v2}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    iget-object v5, p0, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    invoke-virtual {v2, v5, v6}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_1

    .line 99
    .line 100
    const-string v2, "\u4f60\u786e\u5b9a\u8981\u5378\u8f7d\u8be5\u6e38\u620f\uff1f"

    .line 101
    .line 102
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    .line 104
    .line 105
    const-string v2, "\u5378\u8f7d"

    .line 106
    .line 107
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_1
    const-string v2, "\u4f60\u786e\u5b9a\u8981\u5220\u9664\u8be5\u6e38\u620f\uff1f"

    .line 112
    .line 113
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    .line 118
    .line 119
    :goto_0
    const/4 v2, 0x1

    .line 120
    goto :goto_1

    .line 121
    :cond_2
    const-string v2, "\u4f60\u786e\u5b9a\u8981\u5220\u9664\u8be5\u6e38\u620f\u53ca\u6587\u4ef6\uff1f"

    .line 122
    .line 123
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    .line 128
    .line 129
    const/4 v2, 0x0

    .line 130
    :goto_1
    const v3, 0x7f0a04b2

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    check-cast v3, Landroid/widget/Button;

    .line 138
    .line 139
    new-instance v4, Lcom/join/mgps/adapter/v3;

    .line 140
    .line 141
    invoke-direct {v4, p2}, Lcom/join/mgps/adapter/v3;-><init>(Landroid/app/Dialog;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    .line 146
    .line 147
    new-instance v3, Lcom/join/mgps/adapter/w3;

    .line 148
    .line 149
    invoke-direct {v3, p0, v2, p1, p2}, Lcom/join/mgps/adapter/w3;-><init>(Lcom/join/mgps/adapter/i4;ZLcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/app/Dialog;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    .line 156
    .line 157
    .line 158
    return v0
.end method

.method public static synthetic b(Lcom/join/mgps/adapter/i4;Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/i4;->U(Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V

    return-void
.end method

.method private synthetic b0(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/i4;->i:Lcom/join/mgps/adapter/i4$e;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {p2, v0, p1}, Lcom/join/mgps/adapter/i4$e;->onClick(Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    if-eqz p2, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    sget-object v0, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    if-eqz p2, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    iget-object v0, p0, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 41
    .line 42
    invoke-virtual {p2, v0, p1}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivityBYDownloadTAsk(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    return-void
.end method

.method public static synthetic c(Lcom/join/mgps/adapter/i4;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/i4;->c0(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/view/View;)V

    return-void
.end method

.method private synthetic c0(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/i4;->i:Lcom/join/mgps/adapter/i4$e;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {p2, v0, p1}, Lcom/join/mgps/adapter/i4$e;->onMore(Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public static synthetic d(Lcom/join/mgps/adapter/i4;Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/i4;->Y(Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V

    return-void
.end method

.method private static synthetic d0(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lcom/join/mgps/adapter/i4;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/i4;->Q(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/view/View;)V

    return-void
.end method

.method private static synthetic e0(Landroid/view/animation/AlphaAnimation;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/animation/Animation;->start()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Lcom/join/mgps/adapter/i4;Ljava/util/ArrayList;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/i4;->O(Ljava/util/ArrayList;I)V

    return-void
.end method

.method private f0(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CollectionSevenListBean;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "helper",
            "bean"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionSevenListBean;->getItem()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    if-eqz v0, :cond_8

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionSevenListBean;->getItem()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    instance-of v0, v0, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto/16 :goto_6

    .line 18
    .line 19
    :cond_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionSevenListBean;->getItem()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    check-cast p2, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 24
    .line 25
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 32
    .line 33
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    const v1, 0x7f0a054e

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lcom/join/mgps/customview/DownloadNormalView;

    .line 51
    .line 52
    new-instance v3, Lm6/c;

    .line 53
    .line 54
    iget-object v4, p0, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 55
    .line 56
    invoke-direct {v3, v4, p2}, Lm6/c;-><init>(Landroid/content/Context;Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v3}, Lcom/join/mgps/customview/DownloadNormalView;->f(Lcom/join/mgps/callbacks/f;)V

    .line 60
    .line 61
    .line 62
    const v1, 0x7f0a1a3b

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {p1, v1, v3}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getSpTagInfo()Lcom/join/mgps/dto/TipNew;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getTag_info()Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    const-string v4, " | "

    .line 81
    .line 82
    invoke-static {v1, v3, v4}, Lcom/join/mgps/Util/UtilsMy;->R1(Lcom/join/mgps/dto/TipNew;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    const v3, 0x7f0a1a3d

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v3, v1}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 90
    .line 91
    .line 92
    const v1, 0x7f0a1a3c

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getShowScore()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-virtual {p1, v1, v4}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getInfo()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-eqz v1, :cond_2

    .line 111
    .line 112
    const-string v1, ""

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_2
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getInfo()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    :goto_0
    const v4, 0x7f0a1a3f

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v4, v1}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->giftSwitch()Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    const v4, 0x7f0a09fe

    .line 130
    .line 131
    .line 132
    const/4 v5, 0x1

    .line 133
    if-eqz v1, :cond_3

    .line 134
    .line 135
    invoke-virtual {p1, v4, v5}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_3
    invoke-virtual {p1, v4, v2}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 140
    .line 141
    .line 142
    :goto_1
    const v1, 0x7f0a14a2

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 150
    .line 151
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getGif_ico()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    if-eqz v4, :cond_4

    .line 160
    .line 161
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getIco()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    goto :goto_2

    .line 166
    :cond_4
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getGif_ico()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    :goto_2
    invoke-static {v1, v4}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getApp_size()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    const v4, 0x7f0a1a3e

    .line 182
    .line 183
    .line 184
    if-nez v1, :cond_6

    .line 185
    .line 186
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->isHmCloud()Z

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    if-eqz v1, :cond_5

    .line 191
    .line 192
    invoke-virtual {p1, v4, v2}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 193
    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_5
    invoke-virtual {p1, v4, v5}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 197
    .line 198
    .line 199
    :goto_3
    :try_start_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getApp_size()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 204
    .line 205
    .line 206
    move-result-wide v0

    .line 207
    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    .line 208
    .line 209
    mul-double v0, v0, v6

    .line 210
    .line 211
    mul-double v0, v0, v6

    .line 212
    .line 213
    double-to-long v0, v0

    .line 214
    const-wide/16 v6, 0x0

    .line 215
    .line 216
    cmp-long v8, v0, v6

    .line 217
    .line 218
    if-lez v8, :cond_6

    .line 219
    .line 220
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-virtual {p1, v4, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .line 226
    .line 227
    goto :goto_4

    .line 228
    :catch_0
    nop

    .line 229
    :cond_6
    :goto_4
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->isH5Game()Z

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    const v1, 0x7f0a06d8

    .line 234
    .line 235
    .line 236
    if-eqz v0, :cond_7

    .line 237
    .line 238
    invoke-virtual {p1, v1, v2}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 239
    .line 240
    .line 241
    invoke-virtual {p1, v3, v2}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1, v4, v2}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 245
    .line 246
    .line 247
    goto :goto_5

    .line 248
    :cond_7
    invoke-virtual {p1, v1, v5}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 249
    .line 250
    .line 251
    invoke-virtual {p1, v3, v5}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 252
    .line 253
    .line 254
    invoke-virtual {p1, v4, v5}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 255
    .line 256
    .line 257
    :goto_5
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 258
    .line 259
    new-instance v0, Lcom/join/mgps/adapter/x3;

    .line 260
    .line 261
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/x3;-><init>(Lcom/join/mgps/adapter/i4;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    .line 266
    .line 267
    return-void

    .line 268
    :cond_8
    :goto_6
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 269
    .line 270
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 271
    .line 272
    .line 273
    return-void
.end method

.method public static synthetic g(Lcom/join/mgps/adapter/i4;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/i4;->a0(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/mgps/adapter/i4;->d0(Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/join/mgps/adapter/i4;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/i4;->T(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Lcom/join/mgps/adapter/i4;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/i4;->P(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k(Lcom/join/mgps/adapter/i4;Lcom/join/mgps/adapter/i4$i;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/i4;->W(Lcom/join/mgps/adapter/i4$i;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Landroid/view/animation/AlphaAnimation;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/mgps/adapter/i4;->e0(Landroid/view/animation/AlphaAnimation;)V

    return-void
.end method

.method public static synthetic m(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/mgps/adapter/i4;->R(Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n(Lcom/join/mgps/adapter/i4;ZLcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/join/mgps/adapter/i4;->Z(ZLcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o(Lcom/join/mgps/adapter/i4;ZLcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/join/mgps/adapter/i4;->S(ZLcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p(Lcom/join/mgps/adapter/i4;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/i4;->V(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/mgps/adapter/i4;->X(Landroid/view/View;)V

    return-void
.end method

.method static synthetic r(Lcom/join/mgps/adapter/i4;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/adapter/i4;->g:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic s(Lcom/join/mgps/adapter/i4;)Lcom/join/mgps/dto/CommonGameInfoBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/i4;->j:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 2
    .line 3
    return-object p0
.end method

.method private t(Lcom/join/mgps/base/b;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "helper",
            "items"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/base/b;",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/CloudGameBanner;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    const-string v0, "personal_banner"

    .line 2
    .line 3
    const v1, 0x7f0a0156

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/youth/banner/Banner;

    .line 11
    .line 12
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lcom/join/mgps/dto/CloudGameBanner;

    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/join/mgps/dto/CloudGameBanner;->getPic_path()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Ljava/lang/CharSequence;

    .line 46
    .line 47
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-nez v2, :cond_1

    .line 52
    .line 53
    invoke-virtual {p1, v1}, Lcom/youth/banner/Banner;->z(Ljava/util/List;)Lcom/youth/banner/Banner;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    new-instance v2, Lcom/papa91/arc/view/GlideImageLoader;

    .line 58
    .line 59
    invoke-direct {v2}, Lcom/papa91/arc/view/GlideImageLoader;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2}, Lcom/youth/banner/Banner;->y(Lcom/youth/banner/loader/ImageLoaderInterface;)Lcom/youth/banner/Banner;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    new-instance v2, Lcom/join/mgps/adapter/y3;

    .line 67
    .line 68
    invoke-direct {v2, p0, p2}, Lcom/join/mgps/adapter/y3;-><init>(Lcom/join/mgps/adapter/i4;Ljava/util/ArrayList;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v2}, Lcom/youth/banner/Banner;->D(Lya/b;)Lcom/youth/banner/Banner;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    if-lez p2, :cond_1

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/youth/banner/Banner;->I()Lcom/youth/banner/Banner;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :catch_0
    move-exception p1

    .line 88
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 89
    .line 90
    .line 91
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public M()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/adapter/i4;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public N()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/adapter/i4;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method g0()V
    .locals 10

    .line 1
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lq5/f;->a0(Landroid/content/Context;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    const-wide/16 v2, 0x0

    .line 13
    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-lez v4, :cond_3

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    move-wide v4, v2

    .line 27
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    if-eqz v6, :cond_2

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    check-cast v6, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 38
    .line 39
    cmp-long v7, v4, v2

    .line 40
    .line 41
    if-eqz v7, :cond_1

    .line 42
    .line 43
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFinishTime()J

    .line 44
    .line 45
    .line 46
    move-result-wide v7

    .line 47
    cmp-long v9, v4, v7

    .line 48
    .line 49
    if-gez v9, :cond_0

    .line 50
    .line 51
    :cond_1
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFinishTime()J

    .line 52
    .line 53
    .line 54
    move-result-wide v4

    .line 55
    move-object v1, v6

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    if-eqz v1, :cond_a

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iput-object v0, p0, Lcom/join/mgps/adapter/i4;->c:Ljava/lang/String;

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_3
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lq5/f;->d()Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    if-eqz v5, :cond_5

    .line 83
    .line 84
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    check-cast v5, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 89
    .line 90
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    const/4 v6, 0x3

    .line 99
    if-gt v5, v6, :cond_4

    .line 100
    .line 101
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    move-wide v4, v2

    .line 110
    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    if-eqz v6, :cond_8

    .line 115
    .line 116
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    check-cast v6, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 121
    .line 122
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 123
    .line 124
    .line 125
    move-result v7

    .line 126
    const/4 v8, 0x5

    .line 127
    if-ne v7, v8, :cond_6

    .line 128
    .line 129
    cmp-long v7, v4, v2

    .line 130
    .line 131
    if-eqz v7, :cond_7

    .line 132
    .line 133
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getOpenTime()J

    .line 134
    .line 135
    .line 136
    move-result-wide v7

    .line 137
    cmp-long v9, v4, v7

    .line 138
    .line 139
    if-gez v9, :cond_6

    .line 140
    .line 141
    :cond_7
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getOpenTime()J

    .line 142
    .line 143
    .line 144
    move-result-wide v4

    .line 145
    move-object v1, v6

    .line 146
    goto :goto_2

    .line 147
    :cond_8
    if-eqz v1, :cond_9

    .line 148
    .line 149
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    iput-object v0, p0, Lcom/join/mgps/adapter/i4;->c:Ljava/lang/String;

    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_9
    const-string v0, ""

    .line 157
    .line 158
    iput-object v0, p0, Lcom/join/mgps/adapter/i4;->c:Ljava/lang/String;

    .line 159
    .line 160
    :cond_a
    :goto_3
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/i4;->h:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/i4;->h:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ge p1, v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/adapter/i4;->h:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/join/mgps/adapter/i4$f;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/adapter/i4$f;->a()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/i4;->h:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ge p1, v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/adapter/i4;->h:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/join/mgps/adapter/i4$f;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/adapter/i4$f;->b()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1

    .line 22
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "convertView",
            "parent"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/i4;->getItemViewType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/i4;->L(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    const/4 v1, 0x1

    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/i4;->J(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_1
    const/4 v1, 0x2

    .line 21
    if-ne v0, v1, :cond_2

    .line 22
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/i4;->I(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :cond_2
    const/4 v1, 0x4

    .line 29
    if-ne v0, v1, :cond_3

    .line 30
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/i4;->K(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1

    .line 36
    :cond_3
    const/4 v1, 0x3

    .line 37
    if-ne v0, v1, :cond_4

    .line 38
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/i4;->H(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    return-object p1

    .line 44
    :cond_4
    const/4 v1, 0x5

    .line 45
    if-ne v0, v1, :cond_5

    .line 46
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/i4;->I(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    return-object p1

    .line 52
    :cond_5
    const/4 v1, 0x6

    .line 53
    if-ne v0, v1, :cond_6

    .line 54
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/i4;->I(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    return-object p1

    .line 60
    :cond_6
    const/4 v1, 0x7

    .line 61
    if-ne v0, v1, :cond_7

    .line 62
    .line 63
    invoke-direct {p0, p2, p3}, Lcom/join/mgps/adapter/i4;->D(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    return-object p1

    .line 68
    :cond_7
    const/16 v1, 0x8

    .line 69
    .line 70
    if-ne v0, v1, :cond_8

    .line 71
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/i4;->C(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    return-object p1

    .line 77
    :cond_8
    const/16 v1, 0x9

    .line 78
    .line 79
    if-ne v0, v1, :cond_9

    .line 80
    .line 81
    invoke-direct {p0, p2, p3}, Lcom/join/mgps/adapter/i4;->G(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    return-object p1

    .line 86
    :cond_9
    const/16 v1, 0xa

    .line 87
    .line 88
    if-ne v0, v1, :cond_a

    .line 89
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/i4;->A(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    return-object p1

    .line 95
    :cond_a
    const/16 v1, 0xb

    .line 96
    .line 97
    if-ne v0, v1, :cond_b

    .line 98
    .line 99
    invoke-direct {p0, p2, p3}, Lcom/join/mgps/adapter/i4;->F(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    return-object p1

    .line 104
    :cond_b
    const/16 v1, 0xc

    .line 105
    .line 106
    if-ne v0, v1, :cond_c

    .line 107
    .line 108
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/i4;->E(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    return-object p1

    .line 113
    :cond_c
    const/16 v1, 0xd

    .line 114
    .line 115
    if-ne v0, v1, :cond_d

    .line 116
    .line 117
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/i4;->B(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    return-object p1

    .line 122
    :cond_d
    const/4 p1, 0x0

    .line 123
    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    const/16 v0, 0xe

    return v0
.end method

.method public h0(Lcom/join/mgps/dto/CommonGameInfoBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adAppBean"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/i4;->j:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 2
    .line 3
    return-void
.end method

.method public i0(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canShowHighlight"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/adapter/i4;->d:Z

    .line 2
    .line 3
    return-void
.end method

.method public j0(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canShowRecommBadge"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/adapter/i4;->e:Z

    .line 2
    .line 3
    return-void
.end method

.method public k0(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "corner_mark_pic"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/i4;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method l0(Landroid/widget/TextView;I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "textView",
            "number"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x1

    .line 5
    if-ge p2, v0, :cond_1

    .line 6
    .line 7
    const/16 p2, 0x8

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 26
    .line 27
    const/16 v4, 0xa

    .line 28
    .line 29
    const v5, 0x7f0713c2

    .line 30
    .line 31
    .line 32
    const/4 v6, 0x0

    .line 33
    if-ge p2, v4, :cond_2

    .line 34
    .line 35
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 40
    .line 41
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 46
    .line 47
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v6, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 51
    .line 52
    .line 53
    const v2, 0x7f080da4

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    const/4 v4, -0x2

    .line 64
    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 65
    .line 66
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 71
    .line 72
    const/16 v4, 0x11

    .line 73
    .line 74
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v6, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 81
    .line 82
    .line 83
    const v3, 0x7f080ccc

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 87
    .line 88
    .line 89
    const v3, 0x7f0711b5

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    invoke-virtual {p1, v2, v1, v2, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 97
    .line 98
    .line 99
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string p2, ""

    .line 108
    .line 109
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method m0(Lcom/join/mgps/adapter/i4$h;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "holder",
            "downloadTask",
            "position"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 4
    .line 5
    .line 6
    move-result p3

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p3, 0x0

    .line 9
    :goto_0
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->w0(ILjava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-lez v0, :cond_1

    .line 22
    .line 23
    const/16 p3, 0x2b

    .line 24
    .line 25
    :cond_1
    const/16 v0, 0x8

    .line 26
    .line 27
    if-eq p3, v0, :cond_6

    .line 28
    .line 29
    const/16 v0, 0xc

    .line 30
    .line 31
    if-eq p3, v0, :cond_5

    .line 32
    .line 33
    const/16 v0, 0xd

    .line 34
    .line 35
    if-eq p3, v0, :cond_4

    .line 36
    .line 37
    invoke-static {p2}, Lcom/join/mgps/Util/UtilsMy;->U1(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 58
    .line 59
    .line 60
    move-result-object p3

    .line 61
    invoke-virtual {p3}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    invoke-virtual {p3}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    :cond_2
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isCloudGame()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    iget-object p3, p1, Lcom/join/mgps/adapter/i4$h;->b:Landroid/widget/TextView;

    .line 76
    .line 77
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    const-string v2, " \u00b7 "

    .line 86
    .line 87
    invoke-static {v0, v1, v2}, Lcom/join/mgps/Util/UtilsMy;->T1(Lcom/join/mgps/dto/TipNew;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_3
    iget-object v0, p1, Lcom/join/mgps/adapter/i4$h;->b:Landroid/widget/TextView;

    .line 96
    .line 97
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    .line 99
    .line 100
    :goto_1
    iget-object p3, p1, Lcom/join/mgps/adapter/i4$h;->b:Landroid/widget/TextView;

    .line 101
    .line 102
    const-string v0, "#FFA8A8A8"

    .line 103
    .line 104
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_4
    iget-object p3, p1, Lcom/join/mgps/adapter/i4$h;->b:Landroid/widget/TextView;

    .line 113
    .line 114
    const-string v0, "\u89e3\u538b\u5931\u8d25"

    .line 115
    .line 116
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    .line 118
    .line 119
    iget-object p3, p1, Lcom/join/mgps/adapter/i4$h;->b:Landroid/widget/TextView;

    .line 120
    .line 121
    const-string v0, "#FFFF4D4D"

    .line 122
    .line 123
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_5
    iget-object p3, p1, Lcom/join/mgps/adapter/i4$h;->b:Landroid/widget/TextView;

    .line 132
    .line 133
    const-string v0, "\u89e3\u538b\u4e2d..."

    .line 134
    .line 135
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_6
    iget-object p3, p1, Lcom/join/mgps/adapter/i4$h;->b:Landroid/widget/TextView;

    .line 140
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 147
    .line 148
    .line 149
    move-result-wide v1

    .line 150
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v1, "% \u00b7 "

    .line 154
    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    .line 171
    .line 172
    :goto_2
    iget-object p3, p1, Lcom/join/mgps/adapter/i4$h;->l:Landroid/view/View;

    .line 173
    .line 174
    new-instance v0, Lcom/join/mgps/adapter/b4;

    .line 175
    .line 176
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/b4;-><init>(Lcom/join/mgps/adapter/i4;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    .line 181
    .line 182
    iget-object p3, p1, Lcom/join/mgps/adapter/i4$h;->i:Landroid/view/View;

    .line 183
    .line 184
    new-instance v0, Lcom/join/mgps/adapter/c4;

    .line 185
    .line 186
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/c4;-><init>(Lcom/join/mgps/adapter/i4;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    .line 191
    .line 192
    iget-object p3, p1, Lcom/join/mgps/adapter/i4$h;->l:Landroid/view/View;

    .line 193
    .line 194
    new-instance v0, Lcom/join/mgps/adapter/d4;

    .line 195
    .line 196
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/d4;-><init>(Lcom/join/mgps/adapter/i4;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/i4;->p0(Lcom/join/mgps/adapter/i4$h;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 203
    .line 204
    .line 205
    return-void
.end method

.method n0(Lcom/join/mgps/adapter/i4$j;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "holder",
            "downloadTask",
            "position"
        }
    .end annotation

    .line 1
    move-object v1, p0

    .line 2
    move-object/from16 v2, p1

    .line 3
    .line 4
    move-object/from16 v3, p2

    .line 5
    .line 6
    if-nez v3, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v4, 0x1

    .line 14
    const/4 v5, 0x0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v6, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    sget-object v7, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 27
    .line 28
    invoke-virtual {v7}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v7, ""

    .line 36
    .line 37
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/4 v0, 0x0

    .line 53
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    if-eqz v6, :cond_2

    .line 58
    .line 59
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    sget-object v7, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    .line 64
    .line 65
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    if-eqz v6, :cond_2

    .line 74
    .line 75
    const/4 v6, 0x1

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    const/4 v6, 0x0

    .line 78
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    if-eqz v7, :cond_3

    .line 83
    .line 84
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    sget-object v8, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    .line 89
    .line 90
    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    :cond_3
    iget-object v7, v2, Lcom/join/mgps/adapter/i4$j;->f:Landroid/widget/TextView;

    .line 99
    .line 100
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    iget-object v7, v2, Lcom/join/mgps/adapter/i4$j;->f:Landroid/widget/TextView;

    .line 104
    .line 105
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 106
    .line 107
    .line 108
    if-eqz v0, :cond_4

    .line 109
    .line 110
    iget-object v0, v2, Lcom/join/mgps/adapter/i4$j;->f:Landroid/widget/TextView;

    .line 111
    .line 112
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/adapter/i4;->o0(Landroid/widget/TextView;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 113
    .line 114
    .line 115
    goto/16 :goto_7

    .line 116
    .line 117
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 126
    .line 127
    .line 128
    move-result-wide v7

    .line 129
    const-wide/high16 v9, 0x4090000000000000L    # 1024.0

    .line 130
    .line 131
    mul-double v7, v7, v9

    .line 132
    .line 133
    mul-double v7, v7, v9

    .line 134
    .line 135
    double-to-long v7, v7

    .line 136
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v9

    .line 144
    invoke-static {v4, v9}, Lcom/join/mgps/Util/UtilsMy;->w0(ILjava/lang/String;)I

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    const/16 v9, 0x2b

    .line 149
    .line 150
    if-lez v4, :cond_5

    .line 151
    .line 152
    const/16 v0, 0x2b

    .line 153
    .line 154
    :cond_5
    const/4 v4, 0x5

    .line 155
    const v10, 0x7f06002b

    .line 156
    .line 157
    .line 158
    const v11, 0x7f080f8b

    .line 159
    .line 160
    .line 161
    if-eqz v0, :cond_d

    .line 162
    .line 163
    const/16 v12, 0x1b

    .line 164
    .line 165
    const-string v13, "\u6682\u505c\u4e2d"

    .line 166
    .line 167
    if-eq v0, v12, :cond_c

    .line 168
    .line 169
    const/16 v12, 0x30

    .line 170
    .line 171
    if-eq v0, v12, :cond_b

    .line 172
    .line 173
    const/4 v12, 0x2

    .line 174
    const-string v14, "/"

    .line 175
    .line 176
    if-eq v0, v12, :cond_9

    .line 177
    .line 178
    const/4 v12, 0x3

    .line 179
    if-eq v0, v12, :cond_7

    .line 180
    .line 181
    if-eq v0, v4, :cond_6

    .line 182
    .line 183
    const/4 v12, 0x6

    .line 184
    if-eq v0, v12, :cond_7

    .line 185
    .line 186
    const/4 v12, 0x7

    .line 187
    if-eq v0, v12, :cond_d

    .line 188
    .line 189
    const/16 v12, 0x2a

    .line 190
    .line 191
    if-eq v0, v12, :cond_6

    .line 192
    .line 193
    if-eq v0, v9, :cond_d

    .line 194
    .line 195
    const v4, 0x7f060031

    .line 196
    .line 197
    .line 198
    const v5, 0x7f080f90

    .line 199
    .line 200
    .line 201
    packed-switch v0, :pswitch_data_0

    .line 202
    .line 203
    .line 204
    goto/16 :goto_7

    .line 205
    .line 206
    :pswitch_0
    iget-object v0, v2, Lcom/join/mgps/adapter/i4$j;->c:Landroid/widget/TextView;

    .line 207
    .line 208
    const-string v4, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    .line 209
    .line 210
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    .line 212
    .line 213
    iget-object v0, v2, Lcom/join/mgps/adapter/i4$j;->b:Landroid/widget/ProgressBar;

    .line 214
    .line 215
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 216
    .line 217
    .line 218
    move-result-wide v4

    .line 219
    long-to-int v5, v4

    .line 220
    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 221
    .line 222
    .line 223
    iget-object v0, v2, Lcom/join/mgps/adapter/i4$j;->f:Landroid/widget/TextView;

    .line 224
    .line 225
    const v4, 0x7f080fb6

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 229
    .line 230
    .line 231
    iget-object v0, v2, Lcom/join/mgps/adapter/i4$j;->f:Landroid/widget/TextView;

    .line 232
    .line 233
    const-string v4, "\u89e3\u538b"

    .line 234
    .line 235
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    .line 237
    .line 238
    iget-object v0, v2, Lcom/join/mgps/adapter/i4$j;->f:Landroid/widget/TextView;

    .line 239
    .line 240
    iget-object v4, v1, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 241
    .line 242
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 243
    .line 244
    .line 245
    move-result-object v4

    .line 246
    const v5, 0x7f060032

    .line 247
    .line 248
    .line 249
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    .line 250
    .line 251
    .line 252
    move-result v4

    .line 253
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 254
    .line 255
    .line 256
    goto/16 :goto_7

    .line 257
    .line 258
    :pswitch_1
    iget-object v0, v2, Lcom/join/mgps/adapter/i4$j;->c:Landroid/widget/TextView;

    .line 259
    .line 260
    const-string v4, "\u89e3\u538b\u4e2d.."

    .line 261
    .line 262
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    .line 264
    .line 265
    iget-object v0, v2, Lcom/join/mgps/adapter/i4$j;->b:Landroid/widget/ProgressBar;

    .line 266
    .line 267
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 268
    .line 269
    .line 270
    move-result-wide v4

    .line 271
    long-to-int v5, v4

    .line 272
    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 273
    .line 274
    .line 275
    iget-object v0, v2, Lcom/join/mgps/adapter/i4$j;->f:Landroid/widget/TextView;

    .line 276
    .line 277
    const v4, 0x7f080550

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 281
    .line 282
    .line 283
    iget-object v0, v2, Lcom/join/mgps/adapter/i4$j;->f:Landroid/widget/TextView;

    .line 284
    .line 285
    const-string v4, "\u89e3\u538b\u4e2d"

    .line 286
    .line 287
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    .line 289
    .line 290
    iget-object v0, v2, Lcom/join/mgps/adapter/i4$j;->f:Landroid/widget/TextView;

    .line 291
    .line 292
    const v4, -0x4a4a4b

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 296
    .line 297
    .line 298
    goto/16 :goto_7

    .line 299
    .line 300
    :pswitch_2
    iget-object v0, v2, Lcom/join/mgps/adapter/i4$j;->f:Landroid/widget/TextView;

    .line 301
    .line 302
    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 303
    .line 304
    .line 305
    iget-object v0, v2, Lcom/join/mgps/adapter/i4$j;->f:Landroid/widget/TextView;

    .line 306
    .line 307
    const-string v5, "\u5b89\u88c5"

    .line 308
    .line 309
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    .line 311
    .line 312
    iget-object v0, v2, Lcom/join/mgps/adapter/i4$j;->f:Landroid/widget/TextView;

    .line 313
    .line 314
    iget-object v5, v1, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 315
    .line 316
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 317
    .line 318
    .line 319
    move-result-object v5

    .line 320
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 321
    .line 322
    .line 323
    move-result v4

    .line 324
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 325
    .line 326
    .line 327
    goto/16 :goto_7

    .line 328
    .line 329
    :pswitch_3
    iget-object v0, v2, Lcom/join/mgps/adapter/i4$j;->f:Landroid/widget/TextView;

    .line 330
    .line 331
    invoke-virtual {v0, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 332
    .line 333
    .line 334
    iget-object v0, v2, Lcom/join/mgps/adapter/i4$j;->f:Landroid/widget/TextView;

    .line 335
    .line 336
    const-string v4, "\u7b49\u5f85"

    .line 337
    .line 338
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    .line 340
    .line 341
    iget-object v0, v2, Lcom/join/mgps/adapter/i4$j;->f:Landroid/widget/TextView;

    .line 342
    .line 343
    iget-object v4, v1, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 344
    .line 345
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 346
    .line 347
    .line 348
    move-result-object v4

    .line 349
    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getColor(I)I

    .line 350
    .line 351
    .line 352
    move-result v4

    .line 353
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 354
    .line 355
    .line 356
    iget-object v0, v2, Lcom/join/mgps/adapter/i4$j;->c:Landroid/widget/TextView;

    .line 357
    .line 358
    new-instance v4, Ljava/lang/StringBuilder;

    .line 359
    .line 360
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 361
    .line 362
    .line 363
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 364
    .line 365
    .line 366
    move-result-wide v5

    .line 367
    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v5

    .line 371
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v5

    .line 381
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v4

    .line 388
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    .line 390
    .line 391
    :try_start_0
    iget-object v0, v2, Lcom/join/mgps/adapter/i4$j;->b:Landroid/widget/ProgressBar;

    .line 392
    .line 393
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 394
    .line 395
    .line 396
    move-result-wide v4

    .line 397
    long-to-int v5, v4

    .line 398
    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    .line 400
    .line 401
    goto :goto_2

    .line 402
    :catch_0
    move-exception v0

    .line 403
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 404
    .line 405
    .line 406
    :goto_2
    iget-object v0, v2, Lcom/join/mgps/adapter/i4$j;->c:Landroid/widget/TextView;

    .line 407
    .line 408
    const-string v4, "\u7b49\u5f85\u4e2d"

    .line 409
    .line 410
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    .line 412
    .line 413
    goto/16 :goto_7

    .line 414
    .line 415
    :pswitch_4
    iget-object v0, v2, Lcom/join/mgps/adapter/i4$j;->f:Landroid/widget/TextView;

    .line 416
    .line 417
    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 418
    .line 419
    .line 420
    iget-object v0, v2, Lcom/join/mgps/adapter/i4$j;->f:Landroid/widget/TextView;

    .line 421
    .line 422
    const-string v5, "\u66f4\u65b0"

    .line 423
    .line 424
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    .line 426
    .line 427
    iget-object v0, v2, Lcom/join/mgps/adapter/i4$j;->f:Landroid/widget/TextView;

    .line 428
    .line 429
    iget-object v5, v1, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 430
    .line 431
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 432
    .line 433
    .line 434
    move-result-object v5

    .line 435
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 436
    .line 437
    .line 438
    move-result v4

    .line 439
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 440
    .line 441
    .line 442
    goto/16 :goto_7

    .line 443
    .line 444
    :cond_6
    iget-object v0, v2, Lcom/join/mgps/adapter/i4$j;->f:Landroid/widget/TextView;

    .line 445
    .line 446
    const v4, 0x7f080f97

    .line 447
    .line 448
    .line 449
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 450
    .line 451
    .line 452
    iget-object v0, v2, Lcom/join/mgps/adapter/i4$j;->f:Landroid/widget/TextView;

    .line 453
    .line 454
    iget-object v4, v1, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 455
    .line 456
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 457
    .line 458
    .line 459
    move-result-object v4

    .line 460
    const v7, 0x7f120105

    .line 461
    .line 462
    .line 463
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v4

    .line 467
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    .line 469
    .line 470
    iget-object v0, v2, Lcom/join/mgps/adapter/i4$j;->f:Landroid/widget/TextView;

    .line 471
    .line 472
    iget-object v4, v1, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 473
    .line 474
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 475
    .line 476
    .line 477
    move-result-object v4

    .line 478
    const v7, 0x7f060034

    .line 479
    .line 480
    .line 481
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    .line 482
    .line 483
    .line 484
    move-result v4

    .line 485
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 486
    .line 487
    .line 488
    if-eqz v6, :cond_f

    .line 489
    .line 490
    iget-object v0, v2, Lcom/join/mgps/adapter/i4$j;->d:Landroid/widget/TextView;

    .line 491
    .line 492
    const/16 v4, 0x8

    .line 493
    .line 494
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 495
    .line 496
    .line 497
    iget-object v0, v2, Lcom/join/mgps/adapter/i4$j;->f:Landroid/widget/TextView;

    .line 498
    .line 499
    const-string v4, "\u5df2\u5b89\u88c5"

    .line 500
    .line 501
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    .line 503
    .line 504
    iget-object v0, v2, Lcom/join/mgps/adapter/i4$j;->f:Landroid/widget/TextView;

    .line 505
    .line 506
    const v4, 0x7f080f93

    .line 507
    .line 508
    .line 509
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 510
    .line 511
    .line 512
    iget-object v0, v2, Lcom/join/mgps/adapter/i4$j;->f:Landroid/widget/TextView;

    .line 513
    .line 514
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 515
    .line 516
    .line 517
    iget-object v0, v2, Lcom/join/mgps/adapter/i4$j;->f:Landroid/widget/TextView;

    .line 518
    .line 519
    const-string v4, "#A1A1A1"

    .line 520
    .line 521
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 522
    .line 523
    .line 524
    move-result v4

    .line 525
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 526
    .line 527
    .line 528
    goto/16 :goto_7

    .line 529
    .line 530
    :cond_7
    iget-object v0, v2, Lcom/join/mgps/adapter/i4$j;->f:Landroid/widget/TextView;

    .line 531
    .line 532
    invoke-virtual {v0, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 533
    .line 534
    .line 535
    iget-object v0, v2, Lcom/join/mgps/adapter/i4$j;->f:Landroid/widget/TextView;

    .line 536
    .line 537
    const-string v4, "\u7ee7\u7eed"

    .line 538
    .line 539
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    .line 541
    .line 542
    iget-object v0, v2, Lcom/join/mgps/adapter/i4$j;->f:Landroid/widget/TextView;

    .line 543
    .line 544
    iget-object v4, v1, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 545
    .line 546
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 547
    .line 548
    .line 549
    move-result-object v4

    .line 550
    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getColor(I)I

    .line 551
    .line 552
    .line 553
    move-result v4

    .line 554
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 555
    .line 556
    .line 557
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 558
    .line 559
    .line 560
    move-result-wide v4

    .line 561
    const-wide/16 v9, 0x0

    .line 562
    .line 563
    cmp-long v0, v4, v9

    .line 564
    .line 565
    if-nez v0, :cond_8

    .line 566
    .line 567
    iget-object v0, v2, Lcom/join/mgps/adapter/i4$j;->c:Landroid/widget/TextView;

    .line 568
    .line 569
    new-instance v4, Ljava/lang/StringBuilder;

    .line 570
    .line 571
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 572
    .line 573
    .line 574
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 575
    .line 576
    .line 577
    move-result-wide v5

    .line 578
    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v5

    .line 582
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    .line 587
    .line 588
    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v5

    .line 592
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    .line 594
    .line 595
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v4

    .line 599
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 600
    .line 601
    .line 602
    goto :goto_3

    .line 603
    :cond_8
    iget-object v0, v2, Lcom/join/mgps/adapter/i4$j;->c:Landroid/widget/TextView;

    .line 604
    .line 605
    new-instance v4, Ljava/lang/StringBuilder;

    .line 606
    .line 607
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 608
    .line 609
    .line 610
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 611
    .line 612
    .line 613
    move-result-wide v5

    .line 614
    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object v5

    .line 618
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    .line 620
    .line 621
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    .line 623
    .line 624
    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 625
    .line 626
    .line 627
    move-result-object v5

    .line 628
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    .line 630
    .line 631
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object v4

    .line 635
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 636
    .line 637
    .line 638
    :goto_3
    iget-object v0, v2, Lcom/join/mgps/adapter/i4$j;->b:Landroid/widget/ProgressBar;

    .line 639
    .line 640
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 641
    .line 642
    .line 643
    move-result-wide v4

    .line 644
    long-to-int v5, v4

    .line 645
    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 646
    .line 647
    .line 648
    goto :goto_4

    .line 649
    :catch_1
    move-exception v0

    .line 650
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 651
    .line 652
    .line 653
    :goto_4
    iget-object v0, v2, Lcom/join/mgps/adapter/i4$j;->c:Landroid/widget/TextView;

    .line 654
    .line 655
    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 656
    .line 657
    .line 658
    goto/16 :goto_7

    .line 659
    .line 660
    :cond_9
    invoke-static/range {p2 .. p2}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 661
    .line 662
    .line 663
    iget-object v0, v2, Lcom/join/mgps/adapter/i4$j;->f:Landroid/widget/TextView;

    .line 664
    .line 665
    invoke-virtual {v0, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 666
    .line 667
    .line 668
    iget-object v0, v2, Lcom/join/mgps/adapter/i4$j;->f:Landroid/widget/TextView;

    .line 669
    .line 670
    const-string v4, "\u6682\u505c"

    .line 671
    .line 672
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 673
    .line 674
    .line 675
    iget-object v0, v2, Lcom/join/mgps/adapter/i4$j;->f:Landroid/widget/TextView;

    .line 676
    .line 677
    iget-object v4, v1, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 678
    .line 679
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 680
    .line 681
    .line 682
    move-result-object v4

    .line 683
    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getColor(I)I

    .line 684
    .line 685
    .line 686
    move-result v4

    .line 687
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 688
    .line 689
    .line 690
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 691
    .line 692
    .line 693
    move-result-wide v4

    .line 694
    const-wide/16 v9, 0x0

    .line 695
    .line 696
    cmp-long v0, v4, v9

    .line 697
    .line 698
    if-nez v0, :cond_a

    .line 699
    .line 700
    iget-object v0, v2, Lcom/join/mgps/adapter/i4$j;->c:Landroid/widget/TextView;

    .line 701
    .line 702
    new-instance v4, Ljava/lang/StringBuilder;

    .line 703
    .line 704
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 705
    .line 706
    .line 707
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 708
    .line 709
    .line 710
    move-result-wide v5

    .line 711
    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 712
    .line 713
    .line 714
    move-result-object v5

    .line 715
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    .line 717
    .line 718
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    .line 720
    .line 721
    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 722
    .line 723
    .line 724
    move-result-object v5

    .line 725
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    .line 727
    .line 728
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 729
    .line 730
    .line 731
    move-result-object v4

    .line 732
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 733
    .line 734
    .line 735
    goto :goto_5

    .line 736
    :cond_a
    iget-object v0, v2, Lcom/join/mgps/adapter/i4$j;->c:Landroid/widget/TextView;

    .line 737
    .line 738
    new-instance v4, Ljava/lang/StringBuilder;

    .line 739
    .line 740
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 741
    .line 742
    .line 743
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 744
    .line 745
    .line 746
    move-result-wide v5

    .line 747
    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 748
    .line 749
    .line 750
    move-result-object v5

    .line 751
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    .line 753
    .line 754
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    .line 756
    .line 757
    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 758
    .line 759
    .line 760
    move-result-object v5

    .line 761
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    .line 763
    .line 764
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 765
    .line 766
    .line 767
    move-result-object v4

    .line 768
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 769
    .line 770
    .line 771
    :goto_5
    iget-object v0, v2, Lcom/join/mgps/adapter/i4$j;->b:Landroid/widget/ProgressBar;

    .line 772
    .line 773
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 774
    .line 775
    .line 776
    move-result-wide v4

    .line 777
    long-to-int v5, v4

    .line 778
    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 779
    .line 780
    .line 781
    goto :goto_7

    .line 782
    :cond_b
    iget-object v0, v2, Lcom/join/mgps/adapter/i4$j;->f:Landroid/widget/TextView;

    .line 783
    .line 784
    invoke-virtual {v0, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 785
    .line 786
    .line 787
    iget-object v0, v2, Lcom/join/mgps/adapter/i4$j;->f:Landroid/widget/TextView;

    .line 788
    .line 789
    const-string v4, "\u5b89\u88c5\u4e2d"

    .line 790
    .line 791
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 792
    .line 793
    .line 794
    iget-object v0, v2, Lcom/join/mgps/adapter/i4$j;->f:Landroid/widget/TextView;

    .line 795
    .line 796
    iget-object v4, v1, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 797
    .line 798
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 799
    .line 800
    .line 801
    move-result-object v4

    .line 802
    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getColor(I)I

    .line 803
    .line 804
    .line 805
    move-result v4

    .line 806
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 807
    .line 808
    .line 809
    goto :goto_7

    .line 810
    :cond_c
    iget-object v0, v2, Lcom/join/mgps/adapter/i4$j;->f:Landroid/widget/TextView;

    .line 811
    .line 812
    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 813
    .line 814
    .line 815
    goto :goto_7

    .line 816
    :cond_d
    iget-object v0, v2, Lcom/join/mgps/adapter/i4$j;->f:Landroid/widget/TextView;

    .line 817
    .line 818
    invoke-virtual {v0, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 819
    .line 820
    .line 821
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    .line 822
    .line 823
    .line 824
    move-result v0

    .line 825
    invoke-virtual/range {p2 .. p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 826
    .line 827
    .line 828
    move-result-object v5

    .line 829
    invoke-static {v0, v5}, Lcom/join/mgps/Util/UtilsMy;->w0(ILjava/lang/String;)I

    .line 830
    .line 831
    .line 832
    iget-object v0, v2, Lcom/join/mgps/adapter/i4$j;->f:Landroid/widget/TextView;

    .line 833
    .line 834
    invoke-static {v0, v0, v3}, Lcom/join/mgps/Util/UtilsMy;->n3(Landroid/widget/TextView;Landroid/view/View;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 835
    .line 836
    .line 837
    iget-object v0, v2, Lcom/join/mgps/adapter/i4$j;->f:Landroid/widget/TextView;

    .line 838
    .line 839
    iget-object v5, v1, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 840
    .line 841
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 842
    .line 843
    .line 844
    move-result-object v5

    .line 845
    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getColor(I)I

    .line 846
    .line 847
    .line 848
    move-result v5

    .line 849
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 850
    .line 851
    .line 852
    iget-object v0, v2, Lcom/join/mgps/adapter/i4$j;->f:Landroid/widget/TextView;

    .line 853
    .line 854
    move/from16 v5, p3

    .line 855
    .line 856
    invoke-virtual {p0, v5}, Lcom/join/mgps/adapter/i4;->getItemViewType(I)I

    .line 857
    .line 858
    .line 859
    move-result v5

    .line 860
    if-ne v5, v4, :cond_e

    .line 861
    .line 862
    const-string v4, "\u8bd5\u73a9"

    .line 863
    .line 864
    goto :goto_6

    .line 865
    :cond_e
    const-string v4, "\u83b7\u53d6"

    .line 866
    .line 867
    :goto_6
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 868
    .line 869
    .line 870
    :cond_f
    :goto_7
    iget-object v0, v2, Lcom/join/mgps/adapter/i4$j;->f:Landroid/widget/TextView;

    .line 871
    .line 872
    new-instance v2, Lcom/join/mgps/adapter/i4$d;

    .line 873
    .line 874
    invoke-direct {v2, p0, v3}, Lcom/join/mgps/adapter/i4$d;-><init>(Lcom/join/mgps/adapter/i4;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 875
    .line 876
    .line 877
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 878
    .line 879
    .line 880
    return-void

    .line 881
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/adapter/i4;->g0()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method o0(Landroid/widget/TextView;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "downloadTask"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v2, ""

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const v0, 0x7f080f8b

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 51
    .line 52
    .line 53
    const-string v0, "\u5f00\u59cb"

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const v1, 0x7f06002b

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    .line 73
    .line 74
    new-instance v0, Lcom/join/mgps/adapter/i4$d;

    .line 75
    .line 76
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/i4$d;-><init>(Lcom/join/mgps/adapter/i4;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    .line 81
    .line 82
    :cond_1
    :goto_0
    return-void
.end method

.method p0(Lcom/join/mgps/adapter/i4$h;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "downloadTask"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object p1, p1, Lcom/join/mgps/adapter/i4$h;->h:Lcom/join/mgps/customview/DownloadNormalView;

    .line 5
    .line 6
    instance-of v0, p1, Lcom/join/mgps/customview/DownloadNormalView;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    new-instance v0, Lm6/c;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 13
    .line 14
    invoke-direct {v0, v1, p2}, Lm6/c;-><init>(Landroid/content/Context;Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/DownloadNormalView;->f(Lcom/join/mgps/callbacks/f;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public q0(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "items"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/i4$f;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/i4;->h:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-lez v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/adapter/i4;->h:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public r0(Lcom/join/mgps/adapter/i4$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onGameClickListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/i4;->i:Lcom/join/mgps/adapter/i4$e;

    .line 2
    .line 3
    return-void
.end method

.method public s0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scene"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/adapter/i4;->g:I

    .line 2
    .line 3
    return-void
.end method

.method public t0(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .line 5
    .line 6
    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 10
    .line 11
    .line 12
    const-wide/16 v1, 0x7d0

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Lcom/join/mgps/adapter/i4$b;

    .line 18
    .line 19
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/adapter/i4$b;-><init>(Lcom/join/mgps/adapter/i4;Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lcom/join/mgps/adapter/a4;

    .line 29
    .line 30
    invoke-direct {v1, v0}, Lcom/join/mgps/adapter/a4;-><init>(Landroid/view/animation/AlphaAnimation;)V

    .line 31
    .line 32
    .line 33
    const-wide/16 v2, 0x96

    .line 34
    .line 35
    invoke-virtual {p1, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method u(Lcom/join/mgps/adapter/i4$j;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "holder",
            "downloadTask",
            "position"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->w0(ILjava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-lez v1, :cond_1

    .line 22
    .line 23
    const/16 v0, 0x2b

    .line 24
    .line 25
    :cond_1
    const/16 v1, 0x8

    .line 26
    .line 27
    if-eq v0, v1, :cond_6

    .line 28
    .line 29
    const/16 v1, 0xc

    .line 30
    .line 31
    if-eq v0, v1, :cond_5

    .line 32
    .line 33
    const/16 v1, 0xd

    .line 34
    .line 35
    if-eq v0, v1, :cond_4

    .line 36
    .line 37
    invoke-static {p2}, Lcom/join/mgps/Util/UtilsMy;->U1(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    :cond_2
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isCloudGame()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    iget-object v0, p1, Lcom/join/mgps/adapter/i4$j;->c:Landroid/widget/TextView;

    .line 76
    .line 77
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    const-string v3, " \u00b7 "

    .line 86
    .line 87
    invoke-static {v1, v2, v3}, Lcom/join/mgps/Util/UtilsMy;->T1(Lcom/join/mgps/dto/TipNew;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_3
    iget-object v1, p1, Lcom/join/mgps/adapter/i4$j;->c:Landroid/widget/TextView;

    .line 96
    .line 97
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    .line 99
    .line 100
    :goto_1
    iget-object v0, p1, Lcom/join/mgps/adapter/i4$j;->c:Landroid/widget/TextView;

    .line 101
    .line 102
    const-string v1, "#FFA8A8A8"

    .line 103
    .line 104
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_4
    iget-object v0, p1, Lcom/join/mgps/adapter/i4$j;->c:Landroid/widget/TextView;

    .line 113
    .line 114
    const-string v1, "\u89e3\u538b\u5931\u8d25"

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p1, Lcom/join/mgps/adapter/i4$j;->c:Landroid/widget/TextView;

    .line 120
    .line 121
    const-string v1, "#FFFF4D4D"

    .line 122
    .line 123
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_5
    iget-object v0, p1, Lcom/join/mgps/adapter/i4$j;->c:Landroid/widget/TextView;

    .line 132
    .line 133
    const-string v1, "\u89e3\u538b\u4e2d..."

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_6
    iget-object v0, p1, Lcom/join/mgps/adapter/i4$j;->c:Landroid/widget/TextView;

    .line 140
    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 147
    .line 148
    .line 149
    move-result-wide v2

    .line 150
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v2, "% \u00b7 "

    .line 154
    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    .line 171
    .line 172
    :goto_2
    iget-object v0, p1, Lcom/join/mgps/adapter/i4$j;->m:Landroid/view/View;

    .line 173
    .line 174
    new-instance v1, Lcom/join/mgps/adapter/g4;

    .line 175
    .line 176
    invoke-direct {v1, p0, p2}, Lcom/join/mgps/adapter/g4;-><init>(Lcom/join/mgps/adapter/i4;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    .line 181
    .line 182
    iget-object v0, p1, Lcom/join/mgps/adapter/i4$j;->j:Landroid/view/View;

    .line 183
    .line 184
    new-instance v1, Lcom/join/mgps/adapter/h4;

    .line 185
    .line 186
    invoke-direct {v1, p0, p2}, Lcom/join/mgps/adapter/h4;-><init>(Lcom/join/mgps/adapter/i4;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    .line 191
    .line 192
    iget-object v0, p1, Lcom/join/mgps/adapter/i4$j;->m:Landroid/view/View;

    .line 193
    .line 194
    new-instance v1, Lcom/join/mgps/adapter/s3;

    .line 195
    .line 196
    invoke-direct {v1, p0, p2}, Lcom/join/mgps/adapter/s3;-><init>(Lcom/join/mgps/adapter/i4;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/adapter/i4;->n0(Lcom/join/mgps/adapter/i4$j;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 203
    .line 204
    .line 205
    return-void
.end method

.method v(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x2

    .line 10
    if-eq v1, v2, :cond_2

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x3

    .line 17
    if-ne v1, v2, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    return v0

    .line 21
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v2, p0, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 26
    .line 27
    invoke-static {v2, v1}, Lcom/join/mgps/Util/UtilsMy;->q2(Landroid/content/Context;Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_4

    .line 32
    .line 33
    new-instance v1, Lcom/join/mgps/pref/PrefDef_;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 36
    .line 37
    invoke-direct {v1, v2}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpGameSize()Lorg/androidannotations/api/sharedpreferences/i;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Ljava/lang/Integer;

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    int-to-long v1, v1

    .line 55
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getActual_size()J

    .line 56
    .line 57
    .line 58
    move-result-wide v3

    .line 59
    cmp-long v5, v1, v3

    .line 60
    .line 61
    if-gtz v5, :cond_4

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-nez v1, :cond_3

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    sget-object v1, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-nez p1, :cond_4

    .line 88
    .line 89
    :cond_3
    const/4 v0, 0x1

    .line 90
    :cond_4
    return v0
.end method

.method public w(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/php25/PDownload/d;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 5
    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v1, Lcom/join/mgps/enums/Dtype;->androidobb:Lcom/join/mgps/enums/Dtype;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sget-object v1, Lcom/join/mgps/enums/Dtype;->androiddata:Lcom/join/mgps/enums/Dtype;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sget-object v1, Lcom/join/mgps/enums/Dtype;->androidobbdata:Lcom/join/mgps/enums/Dtype;

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    :cond_1
    new-instance v0, Lcom/join/mgps/adapter/i4$c;

    .line 66
    .line 67
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/i4$c;-><init>(Lcom/join/mgps/adapter/i4;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    .line 77
    .line 78
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/i4;->x(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public x(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/adapter/i4;->h:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_4

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/join/mgps/adapter/i4$f;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/join/mgps/adapter/i4$f;->b()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x2

    .line 27
    if-eq v2, v3, :cond_2

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/join/mgps/adapter/i4$f;->b()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/4 v3, 0x5

    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    :cond_2
    invoke-virtual {v1}, Lcom/join/mgps/adapter/i4$f;->b()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    const/4 v3, 0x6

    .line 41
    if-eq v2, v3, :cond_3

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    invoke-virtual {v1}, Lcom/join/mgps/adapter/i4$f;->a()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_1

    .line 63
    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception p1

    .line 69
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    .line 71
    .line 72
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/adapter/i4;->notifyDataSetChanged()V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public y()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/i4$f;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/i4;->h:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/adapter/i4;->h:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/i4;->h:Ljava/util/List;

    .line 13
    .line 14
    return-object v0
.end method

.method public z()Lcom/join/mgps/adapter/i4$e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/i4;->i:Lcom/join/mgps/adapter/i4$e;

    .line 2
    .line 3
    return-object v0
.end method
