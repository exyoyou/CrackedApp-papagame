.class public Lcom/byazt/vif/n$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x81b,
        0x97
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/vif/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field public final c:Landroid/content/SharedPreferences$Editor;

.field public final tt:Lcom/byazt/iy/n;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences$Editor;Lcom/byazt/iy/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/vif/n$c;->c:Landroid/content/SharedPreferences$Editor;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/vif/n$c;->tt:Lcom/byazt/iy/n;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public apply()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/vif/n$c;->c:Landroid/content/SharedPreferences$Editor;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/vif/n$c;->c:Landroid/content/SharedPreferences$Editor;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public commit()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/vif/n$c;->c:Landroid/content/SharedPreferences$Editor;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/byazt/vif/n$c;->tt:Lcom/byazt/iy/n;

    .line 6
    .line 7
    invoke-static {p1, p2, v0}, Lcom/byazt/bnf/tt;->c(Ljava/lang/String;Ljava/lang/Object;Lcom/byazt/iy/n;)V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 1
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/byazt/vif/n$c;->tt:Lcom/byazt/iy/n;

    .line 6
    .line 7
    invoke-static {p1, p2, v0}, Lcom/byazt/bnf/tt;->c(Ljava/lang/String;Ljava/lang/Object;Lcom/byazt/iy/n;)V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/byazt/vif/n$c;->tt:Lcom/byazt/iy/n;

    .line 6
    .line 7
    invoke-static {p1, p2, v0}, Lcom/byazt/bnf/tt;->c(Ljava/lang/String;Ljava/lang/Object;Lcom/byazt/iy/n;)V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object p3, p0, Lcom/byazt/vif/n$c;->tt:Lcom/byazt/iy/n;

    .line 6
    .line 7
    invoke-static {p1, p2, p3}, Lcom/byazt/bnf/tt;->c(Ljava/lang/String;Ljava/lang/Object;Lcom/byazt/iy/n;)V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/vif/n$c;->tt:Lcom/byazt/iy/n;

    .line 2
    .line 3
    invoke-static {p1, p2, v0}, Lcom/byazt/bnf/tt;->c(Ljava/lang/String;Ljava/lang/Object;Lcom/byazt/iy/n;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/vif/n$c;->tt:Lcom/byazt/iy/n;

    .line 2
    .line 3
    invoke-static {p1, p2, v0}, Lcom/byazt/bnf/tt;->c(Ljava/lang/String;Ljava/lang/Object;Lcom/byazt/iy/n;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/vif/n$c;->tt:Lcom/byazt/iy/n;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/byazt/bnf/tt;->tt(Ljava/lang/String;Lcom/byazt/iy/n;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
