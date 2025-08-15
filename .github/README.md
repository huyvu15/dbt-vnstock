# GitHub Pages Setup for dbt Docs

## 🚀 Setup Instructions

### 1. Enable GitHub Pages
1. Go to your repository Settings
2. Navigate to "Pages" in the sidebar
3. Under "Source", select "GitHub Actions"

### 2. Configure AWS Secrets
Add these secrets to your repository (Settings > Secrets and variables > Actions):

- `AWS_ACCESS_KEY_ID`: Your AWS access key
- `AWS_SECRET_ACCESS_KEY`: Your AWS secret key

**Note:** These credentials need access to:
- AWS Athena (to read table metadata)
- AWS S3 (to access data files)
- AWS Glue Data Catalog (to read schema information)

### 3. Workflow Details

The workflow will:
1. **Install dependencies**: dbt-core, dbt-athena-community
2. **Configure AWS**: Set up credentials for Athena access
3. **Generate docs**: Run `dbt docs generate` to create documentation
4. **Deploy**: Upload to GitHub Pages

### 4. What dbt docs generate creates:

When you run `dbt docs generate`, it creates:
- **Lineage Graph**: Interactive visualization of model dependencies
- **Model Documentation**: Detailed descriptions of each model
- **Column Details**: Information about each column in your tables
- **Test Results**: Data quality test outcomes
- **Dependencies**: Model relationships and references

### 5. Access Your Docs

After deployment, your docs will be available at:
```
https://[username].github.io/[repository-name]/
```

### 6. Manual Trigger

You can manually trigger the workflow:
1. Go to "Actions" tab
2. Select "Deploy dbt docs to GitHub Pages"
3. Click "Run workflow"

## 📋 Requirements

- Repository must be public (for free GitHub Pages)
- AWS credentials with Athena/S3/Glue access
- dbt project with proper profiles.yml
- Models with documentation in .yml files

## 🔧 Troubleshooting

### Common Issues:
1. **AWS credentials**: Ensure secrets are correctly set
2. **dbt errors**: Check profiles.yml configuration
3. **Build failures**: Verify Python dependencies
4. **No models found**: Make sure you have .sql files in models/ directory

### Debug Steps:
1. Check Actions logs for specific errors
2. Test dbt docs locally first: `dbt docs generate && dbt docs serve`
3. Verify AWS permissions
4. Check that models have proper documentation in .yml files

## 🎯 Local Testing

Before pushing to GitHub, test locally:
```bash
# Generate docs
dbt docs generate

# Serve docs locally
dbt docs serve

# Open browser to http://localhost:8080
```
