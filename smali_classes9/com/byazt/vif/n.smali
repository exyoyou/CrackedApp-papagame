.class public Lcom/byazt/vif/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/it/sp;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x81b,
        0x2e
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/vif/n$c;
    }
.end annotation


# instance fields
.field public final c:Lcom/byazt/iy/n;


# direct methods
.method public constructor <init>(Lcom/byazt/iy/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/vif/n;->c:Lcom/byazt/iy/n;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public apply()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/vif/n;->c:Lcom/byazt/iy/n;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/iy/n;->apply()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public applySync()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/vif/n;->c:Lcom/byazt/iy/n;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/iy/n;->applySync()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/vif/n;->c:Lcom/byazt/iy/n;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/iy/n;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/vif/n;->c:Lcom/byazt/iy/n;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/byazt/iy/n;->contains(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public edit()Landroid/content/SharedPreferences$Editor;
    .locals 3

    .line 1
    new-instance v0, Lcom/byazt/vif/n$c;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/vif/n;->c:Lcom/byazt/iy/n;

    .line 4
    .line 5
    invoke-interface {v1}, Lcom/byazt/iy/n;->edit()Landroid/content/SharedPreferences$Editor;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/byazt/vif/n;->c:Lcom/byazt/iy/n;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Lcom/byazt/vif/n$c;-><init>(Landroid/content/SharedPreferences$Editor;Lcom/byazt/iy/n;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public get(Ljava/lang/String;F)F
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/vif/n;->c:Lcom/byazt/iy/n;

    invoke-static {p1, v0, p2}, Lcom/byazt/bnf/tt;->c(Ljava/lang/String;Lcom/byazt/iy/n;F)F

    move-result p1

    return p1
.end method

.method public get(Ljava/lang/String;I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/vif/n;->c:Lcom/byazt/iy/n;

    invoke-static {p1, v0, p2}, Lcom/byazt/bnf/tt;->c(Ljava/lang/String;Lcom/byazt/iy/n;I)I

    move-result p1

    return p1
.end method

.method public get(Ljava/lang/String;J)J
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/vif/n;->c:Lcom/byazt/iy/n;

    invoke-static {p1, v0, p2, p3}, Lcom/byazt/bnf/tt;->c(Ljava/lang/String;Lcom/byazt/iy/n;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/byazt/vif/n;->c:Lcom/byazt/iy/n;

    invoke-static {p1, v0, p2}, Lcom/byazt/bnf/tt;->c(Ljava/lang/String;Lcom/byazt/iy/n;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/byazt/vif/n;->c:Lcom/byazt/iy/n;

    invoke-static {p1, v0, p2}, Lcom/byazt/bnf/tt;->c(Ljava/lang/String;Lcom/byazt/iy/n;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Z)Z
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/byazt/vif/n;->c:Lcom/byazt/iy/n;

    invoke-static {p1, v0, p2}, Lcom/byazt/bnf/tt;->c(Ljava/lang/String;Lcom/byazt/iy/n;Z)Z

    move-result p1

    return p1
.end method

.method public getAll()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/byazt/vif/n;->c:Lcom/byazt/iy/n;

    .line 7
    .line 8
    invoke-interface {v1}, Lcom/byazt/iy/n;->getAll()Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/util/Map$Entry;

    .line 31
    .line 32
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Ljava/lang/String;

    .line 37
    .line 38
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v2}, Lcom/byazt/bnf/tt;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/vif/n;->c:Lcom/byazt/iy/n;

    .line 2
    .line 3
    invoke-static {p1, v0, p2}, Lcom/byazt/bnf/tt;->c(Ljava/lang/String;Lcom/byazt/iy/n;Z)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/vif/n;->c:Lcom/byazt/iy/n;

    .line 2
    .line 3
    invoke-static {p1, v0, p2}, Lcom/byazt/bnf/tt;->c(Ljava/lang/String;Lcom/byazt/iy/n;F)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/vif/n;->c:Lcom/byazt/iy/n;

    .line 2
    .line 3
    invoke-static {p1, v0, p2}, Lcom/byazt/bnf/tt;->c(Ljava/lang/String;Lcom/byazt/iy/n;I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/vif/n;->c:Lcom/byazt/iy/n;

    .line 2
    .line 3
    invoke-static {p1, v0, p2, p3}, Lcom/byazt/bnf/tt;->c(Ljava/lang/String;Lcom/byazt/iy/n;J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    return-wide p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/vif/n;->c:Lcom/byazt/iy/n;

    .line 2
    .line 3
    invoke-static {p1, v0, p2}, Lcom/byazt/bnf/tt;->c(Ljava/lang/String;Lcom/byazt/iy/n;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/vif/n;->c:Lcom/byazt/iy/n;

    .line 2
    .line 3
    invoke-static {p1, v0, p2}, Lcom/byazt/bnf/tt;->c(Ljava/lang/String;Lcom/byazt/iy/n;Ljava/util/Set;)Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public put(Ljava/lang/String;F)V
    .locals 1

    .line 3
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    iget-object v0, p0, Lcom/byazt/vif/n;->c:Lcom/byazt/iy/n;

    invoke-static {p1, p2, v0}, Lcom/byazt/bnf/tt;->c(Ljava/lang/String;Ljava/lang/Object;Lcom/byazt/iy/n;)V

    return-void
.end method

.method public put(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v0, p0, Lcom/byazt/vif/n;->c:Lcom/byazt/iy/n;

    invoke-static {p1, p2, v0}, Lcom/byazt/bnf/tt;->c(Ljava/lang/String;Ljava/lang/Object;Lcom/byazt/iy/n;)V

    return-void
.end method

.method public put(Ljava/lang/String;J)V
    .locals 0

    .line 2
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-object p3, p0, Lcom/byazt/vif/n;->c:Lcom/byazt/iy/n;

    invoke-static {p1, p2, p3}, Lcom/byazt/bnf/tt;->c(Ljava/lang/String;Ljava/lang/Object;Lcom/byazt/iy/n;)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/byazt/vif/n;->c:Lcom/byazt/iy/n;

    invoke-static {p1, p2, v0}, Lcom/byazt/bnf/tt;->c(Ljava/lang/String;Ljava/lang/Object;Lcom/byazt/iy/n;)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/byazt/vif/n;->c:Lcom/byazt/iy/n;

    invoke-static {p1, p2, v0}, Lcom/byazt/bnf/tt;->c(Ljava/lang/String;Ljava/lang/Object;Lcom/byazt/iy/n;)V

    return-void
.end method

.method public put(Ljava/lang/String;Z)V
    .locals 1

    .line 4
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iget-object v0, p0, Lcom/byazt/vif/n;->c:Lcom/byazt/iy/n;

    invoke-static {p1, p2, v0}, Lcom/byazt/bnf/tt;->c(Ljava/lang/String;Ljava/lang/Object;Lcom/byazt/iy/n;)V

    return-void
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/vif/n;->c:Lcom/byazt/iy/n;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/byazt/iy/n;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/vif/n;->c:Lcom/byazt/iy/n;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/byazt/bnf/tt;->tt(Ljava/lang/String;Lcom/byazt/iy/n;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/vif/n;->c:Lcom/byazt/iy/n;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/byazt/iy/n;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
