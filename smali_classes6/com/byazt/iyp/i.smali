.class public final Lcom/byazt/iyp/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x399,
        0x2a
    }
.end annotation


# static fields
.field public static volatile c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static n:Z

.field public static volatile tt:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static uj:Z

.field public static ve:Ljava/lang/reflect/Method;


# direct methods
.method private static c(Ljava/lang/Object;Landroid/view/View;)Ljava/lang/Integer;
    .locals 6

    .line 22
    sget-boolean v0, Lcom/byazt/iyp/i;->uj:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/byazt/iyp/i;->n:Z

    if-nez v0, :cond_0

    .line 23
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "getChildAdapterPosition"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Landroid/view/View;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/byazt/iyp/i;->ve:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 24
    :catch_0
    :try_start_1
    sput-boolean v2, Lcom/byazt/iyp/i;->n:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :goto_0
    sput-boolean v2, Lcom/byazt/iyp/i;->uj:Z

    goto :goto_2

    :goto_1
    sput-boolean v2, Lcom/byazt/iyp/i;->uj:Z

    .line 26
    throw p0

    .line 27
    :cond_0
    :goto_2
    sget-object v0, Lcom/byazt/iyp/i;->ve:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 28
    sget-boolean v4, Lcom/byazt/iyp/i;->n:Z

    if-eqz v4, :cond_1

    goto :goto_3

    :cond_1
    :try_start_2
    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v1

    .line 29
    invoke-virtual {v0, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 30
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    .line 31
    check-cast p0, Ljava/lang/Integer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object p0

    .line 32
    :catchall_1
    sput-boolean v2, Lcom/byazt/iyp/i;->n:Z

    .line 33
    sput-object v3, Lcom/byazt/iyp/i;->ve:Ljava/lang/reflect/Method;

    :cond_2
    :goto_3
    return-object v3
.end method

.method public static c(Lorg/json/JSONObject;Landroid/view/View;I)V
    .locals 6

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    move-object v1, p1

    :goto_0
    if-eqz v1, :cond_4

    add-int/lit8 v2, v0, 0x1

    if-ge v0, p2, :cond_4

    .line 1
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v1}, Lcom/byazt/iyp/i;->c(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "adapter_position"

    const-string v5, "list_component_type"

    if-eqz v3, :cond_1

    .line 3
    :try_start_1
    invoke-virtual {p0, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    invoke-static {v1, p1}, Lcom/byazt/iyp/i;->tt(Ljava/lang/Object;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 5
    invoke-static {v1, p1}, Lcom/byazt/iyp/i;->c(Ljava/lang/Object;Landroid/view/View;)Ljava/lang/Integer;

    move-result-object p1

    .line 6
    invoke-virtual {p0, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void

    .line 7
    :cond_1
    instance-of v3, v1, Landroid/widget/AbsListView;

    if-eqz v3, :cond_2

    .line 8
    invoke-virtual {p0, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    check-cast v1, Landroid/widget/AbsListView;

    invoke-virtual {v1, p1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result p1

    .line 10
    invoke-virtual {p0, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-void

    .line 11
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 12
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_3

    check-cast v0, Landroid/view/View;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    move-object v1, v0

    move v0, v2

    goto :goto_0

    :catchall_0
    :cond_4
    :goto_2
    return-void
.end method

.method private static c(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 13
    :cond_0
    :try_start_0
    sget-object v1, Lcom/byazt/iyp/i;->c:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v2, "androidx.recyclerview.widget.RecyclerView"

    if-nez v1, :cond_1

    .line 14
    :try_start_1
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 15
    sput-object v1, Lcom/byazt/iyp/i;->c:Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :cond_1
    :goto_0
    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 16
    :try_start_2
    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v3

    .line 17
    :cond_2
    sget-object v1, Lcom/byazt/iyp/i;->tt:Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v1, :cond_3

    .line 18
    :try_start_3
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 19
    sput-object v1, Lcom/byazt/iyp/i;->tt:Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    nop

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 20
    :try_start_4
    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v3

    .line 21
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v1, "getChildAdapterPosition"

    new-array v2, v3, [Ljava/lang/Class;

    const-class v4, Landroid/view/View;

    aput-object v4, v2, v0

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return v3

    :catchall_2
    return v0
.end method

.method private static tt(Ljava/lang/Object;Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    move-object v0, p1

    .line 7
    :goto_0
    if-eqz v0, :cond_3

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-ne v1, p0, :cond_1

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_1
    instance-of v0, v1, Landroid/view/View;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    check-cast v1, Landroid/view/View;

    .line 21
    .line 22
    move-object v0, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_2
    const/4 v0, 0x0

    .line 25
    goto :goto_0

    .line 26
    :cond_3
    :goto_1
    return-object p1
.end method
