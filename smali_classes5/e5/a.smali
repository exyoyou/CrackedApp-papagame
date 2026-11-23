.class public Le5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Le5/a;

.field private b:Le5/a;

.field private c:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iput-object p2, p0, Le5/a;->c:Ljava/lang/Object;

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/16 v1, 0x30

    .line 16
    .line 17
    if-ne v0, v1, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Le5/a;->a:Le5/a;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    new-instance v0, Le5/a;

    .line 24
    .line 25
    invoke-direct {v0}, Le5/a;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Le5/a;->a:Le5/a;

    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Le5/a;->a:Le5/a;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    iget-object v0, p0, Le5/a;->b:Le5/a;

    .line 34
    .line 35
    if-nez v0, :cond_3

    .line 36
    .line 37
    new-instance v0, Le5/a;

    .line 38
    .line 39
    invoke-direct {v0}, Le5/a;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Le5/a;->b:Le5/a;

    .line 43
    .line 44
    :cond_3
    iget-object v0, p0, Le5/a;->b:Le5/a;

    .line 45
    .line 46
    :goto_0
    const/4 v1, 0x1

    .line 47
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {v0, p1, p2}, Le5/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public b(I)Le5/a;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Le5/a;->a:Le5/a;

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    iget-object p1, p0, Le5/a;->b:Le5/a;

    .line 7
    .line 8
    return-object p1
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le5/a;->c:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method
