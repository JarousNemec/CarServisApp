namespace CarServisApp;

partial class Form1
{
    /// <summary>
    ///  Required designer variable.
    /// </summary>
    private System.ComponentModel.IContainer components = null;

    /// <summary>
    ///  Clean up any resources being used.
    /// </summary>
    /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
    protected override void Dispose(bool disposing)
    {
        if (disposing && (components != null))
        {
            components.Dispose();
        }

        base.Dispose(disposing);
    }

    #region Windows Form Designer generated code

    /// <summary>
    ///  Required method for Designer support - do not modify
    ///  the contents of this method with the code editor.
    /// </summary>
    private void InitializeComponent()
    {
            this._lsbCustomers = new System.Windows.Forms.ListBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this._lsbInterventions = new System.Windows.Forms.ListBox();
            this.SuspendLayout();
            // 
            // _lsbCustomers
            // 
            this._lsbCustomers.FormattingEnabled = true;
            this._lsbCustomers.ImeMode = System.Windows.Forms.ImeMode.NoControl;
            this._lsbCustomers.ItemHeight = 15;
            this._lsbCustomers.Location = new System.Drawing.Point(10, 24);
            this._lsbCustomers.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this._lsbCustomers.Name = "_lsbCustomers";
            this._lsbCustomers.ScrollAlwaysVisible = true;
            this._lsbCustomers.Size = new System.Drawing.Size(283, 304);
            this._lsbCustomers.TabIndex = 0;
            this._lsbCustomers.DoubleClick += new System.EventHandler(this._lsbCustomers_DoubleClick);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(10, 7);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(102, 15);
            this.label1.TabIndex = 1;
            this.label1.Text = "Seznam zákazníků";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(299, 7);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(142, 15);
            this.label2.TabIndex = 2;
            this.label2.Text = "Seznam servisních zásahů";
            // 
            // _lsbInterventions
            // 
            this._lsbInterventions.FormattingEnabled = true;
            this._lsbInterventions.ImeMode = System.Windows.Forms.ImeMode.NoControl;
            this._lsbInterventions.ItemHeight = 15;
            this._lsbInterventions.Location = new System.Drawing.Point(299, 24);
            this._lsbInterventions.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this._lsbInterventions.Name = "_lsbInterventions";
            this._lsbInterventions.ScrollAlwaysVisible = true;
            this._lsbInterventions.Size = new System.Drawing.Size(294, 304);
            this._lsbInterventions.TabIndex = 3;
            this._lsbInterventions.DoubleClick += new System.EventHandler(this._lsbInterventions_DoubleClick);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(605, 344);
            this.Controls.Add(this._lsbInterventions);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this._lsbCustomers);
            this.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.Name = "Form1";
            this.Text = "Form1";
            this.ResumeLayout(false);
            this.PerformLayout();

    }

    #endregion

    private ListBox _lsbCustomers;
    private Label label1;
    private Label label2;
    private ListBox _lsbInterventions;
}